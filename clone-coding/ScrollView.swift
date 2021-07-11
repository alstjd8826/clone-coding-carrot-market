import UIKit
 
class ScrollView: UIViewController {
    convenience init(title:String) {
        self.init()
        
        self.title = title
    }
    
    // 메인 스크롤뷰
    var m_Scrollview = UIScrollView()
     
    // 메인 스크롤뷰에 추가할 서브 뷰
    var s_View_0 = UIView()
     
    // 서브 스크롤뷰에 추가할 뷰
    var ss_listView_0 = UIView()
    var ss_listView_1 = UIView()
    var ss_listView_2 = UIView()
    var ss_listView_3 = UIView()
    var ss_listView_4 = UIView()
     
    // 뷰에 추가할 텍스트
    var sss_listText_0 = UILabel()
    var sss_listText_1 = UILabel()
    var sss_listText_2 = UILabel()
    var sss_listText_3 = UILabel()
    var sss_listText_4 = UILabel()
     
    // 뷰 전체 폭 길이
    let screenWidth = UIScreen.main.bounds.size.width
    // 뷰 전체 높이 길이
    let screenHeight = UIScreen.main.bounds.size.height
     

     
    override func viewDidLoad() {
        super.viewDidLoad()
         
        // 메인 스크롤뷰 그리기
        // 디바이스 메인 기준으로 포인트를 잡아줘야 한다.
        m_Scrollview.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight )
        m_Scrollview.backgroundColor = #colorLiteral(red: 0.9175565839, green: 0.9177104831, blue: 0.9175363183, alpha: 1)
        
        s_View_0.frame = CGRect( x: 0, y: 0, width: screenWidth, height: 1310)
        s_View_0.backgroundColor = #colorLiteral(red: 0.9175565839, green: 0.9177104831, blue: 0.9175363183, alpha: 1)
        
        // 서브 스크롤에 넣을 뷰 그리기
        ss_listView_0.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 300 )
        ss_listView_1.frame = CGRect(x: 0, y: 310, width: screenWidth, height: 300 )
        ss_listView_2.frame = CGRect(x: 0, y: 310+310, width: screenWidth, height: 180 )
        ss_listView_3.frame = CGRect(x: 0, y: 310+310+190, width: screenWidth, height: 180 )
        ss_listView_4.frame = CGRect(x: 0, y: 310+310+190+190, width: screenWidth, height: 300 )
        
        ss_listView_0.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        ss_listView_1.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        ss_listView_2.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        ss_listView_3.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        ss_listView_4.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
         
        // 서브 스크롤에 들어가는 뷰에 넣을 텍스트.
        sss_listText_0.frame = CGRect(x: 10, y: 10, width: 200, height: 50)
        sss_listText_0.text = "scroll Test List View1"
        sss_listText_0.font = sss_listText_0.font.withSize(20)
         
        sss_listText_1.frame = CGRect(x: 10, y: 10, width: 200, height: 50)
        sss_listText_1.text = "scroll Test List View2"
        sss_listText_1.font = sss_listText_1.font.withSize(20)
         
        sss_listText_2.frame = CGRect(x: 10, y: 10, width: 200, height: 50)
        sss_listText_2.text = "scroll Test List View3"
        sss_listText_2.font = sss_listText_2.font.withSize(20)
        
        sss_listText_3.frame = CGRect(x: 10, y: 10, width: 200, height: 50)
        sss_listText_3.text = "scroll Test List View4"
        sss_listText_3.font = sss_listText_2.font.withSize(20)
        
        sss_listText_4.frame = CGRect(x: 10, y: 10, width: 200, height: 50)
        sss_listText_4.text = "scroll Test List View5"
        sss_listText_4.font = sss_listText_2.font.withSize(20)
         
        // 서브 스크롤에 들어가는 뷰에 텍스트 넣기
        ss_listView_0.addSubview(sss_listText_0)
        ss_listView_1.addSubview(sss_listText_1)
        ss_listView_2.addSubview(sss_listText_2)
        ss_listView_3.addSubview(sss_listText_3)
        ss_listView_4.addSubview(sss_listText_4)
         
        // 서브 스크롤에 뷰 넣기
        s_View_0.addSubview(ss_listView_0)
        s_View_0.addSubview(ss_listView_1)
        s_View_0.addSubview(ss_listView_2)
        s_View_0.addSubview(ss_listView_3)
        s_View_0.addSubview(ss_listView_4)
         
        // 메인 스크롤에 서브 스크롤 넣기
        m_Scrollview.addSubview(s_View_0)
         
        // 서브 스크롤뷰에 대한 사이즈를 지정하는 부분이다.
        // 즉. 스크롤 안에 들어간 뷰들의 총 크기를 지정해줘야 해당 크기만큼 스크롤이 가능해진다.

        // 메인 스크롤 뷰
        m_Scrollview.contentSize = CGSize(width: screenWidth, height: 1310)
         
        // 페이징 설정
        // 디폴트는 false이며 뷰 단위로 스크롤한다.
        m_Scrollview.isPagingEnabled = true
         
        // 메인 스크롤뷰를 실제 메인에 넣기
        self.view.addSubview(m_Scrollview)
         
    }
}

