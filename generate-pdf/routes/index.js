var express     = require('express');
var router      = express.Router();
var PDFDocument = require('pdfkit');
var orm         = require('orm');

router.use(orm.express("mysql://root:@localhost:/dbnews", {
  define: function (db, models, next) {
    models.news = db.define("tbl_posts", {
    id           : Number,
    title        : String,
    detail       : String,
    author_name  : String,
    link         : String,
    publish_date : { type: 'date', time: false },
  });
  next();
  }
}));

router.get('/', function(req, res, next) {
  var result = req.models.news.find({
  }, function(error, news){
      if(error) throw error;
      res.render('index', { news:news, title: 'Generate PDF using NodeJS' });
  });
});

router.get('/pdf', function(req, res, next) {
  var id  = req.query.id;
  const doc = new PDFDocument();
  var result = req.models.news.find({id: id}, function(error, newspost){
      if(error) throw error;

      var title        = newspost[0]['title'];
      var content      = newspost[0]['detail'];
      var publish_date = newspost[0]['publish_date'];
      var author_name  = newspost[0]['author_name'];
      var link         = newspost[0]['link'];

      var filename = encodeURIComponent(title) + '.pdf';
      res.setHeader('Content-disposition', 'attachment; filename="' + filename + '"');
      res.setHeader('Content-type', 'application/pdf');
      doc.font('Times-Roman', 18)
        .fontSize(25)
        .text(title, 100, 50);

      doc.fontSize(15)
         .fillColor('blue')
         .text('Read Full Article', 100, 100)
         .link(100, 100, 160, 27, link);
      doc.moveDown()
         .fillColor('red')
         .text("Author: "+author_name);
      doc
         .moveDown()
         .fillColor('black')
         .fontSize(15)
         .text(content, {
           align: 'justify',
           indent: 30,
           height: 300,
           ellipsis: true
         });
      doc.pipe(res);
      doc.end();
  });

});

module.exports = router;
