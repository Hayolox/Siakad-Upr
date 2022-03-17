class NewsModel {
  final String image;
  final String title;
  final String description;
  final String date;

  NewsModel(
      {required this.image,
      required this.description,
      required this.date,
      required this.title});
}

var listNews = [
  NewsModel(
      image: 'https://picsum.photos/200/300.jpg',
      title: 'Hari Libur Nasional',
      description:
          'Hari libur merupakan hari yang ditunggu-tunggu bagi pekerja. Di hari inilah pekerja bebas melaksanakan aktivitasnya bersama keluarga maupun aktivitas untuk kepentingan pribadinya. Mengenai hari libur dikenal libur mingguan yang disesuaikan dengan hari kerja dalam seminggu dan hari libur resmi yang ditetapkan Pemerintah atau disebut libur Nasional.',
      date: '12-02-2001'),
  NewsModel(
      image: 'https://picsum.photos/199/300.jpg',
      title: 'Wisuda Online 2022',
      description:
          'Wisuda  adalah upacara peneguhan atau pelantikan bagi seseorang yang telah menempuh pendidikan. Di kalangan akademik, wisuda merupakan penanda kelulusan mahasiswa yang telah menempuh masa belajar pada suatu universitas. Biasanya prosesi wisuda diawali prosesi masuknya senat universitas yang terdiri dari rektor dan para pembantu rektor dengan dekan-dekannya guna mewisuda para calon wisudawan. Dalam menyelenggarakan wisuda, tiap perguruan tinggi memiliki agenda yang tidak sama. Ada yang dilakukan setiap tahun, tetapi ada juga yang setiap semester, menyesuaikan kalender akademik.',
      date: '12-02-2001'),
];
