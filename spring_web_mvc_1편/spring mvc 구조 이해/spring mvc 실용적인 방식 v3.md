# 스프링 MVC - 실용적인 방식 - V3

## V2의 문제점

- ModelAndView 객체에 view 이름을 넣어 반환하는 코드가 중복된다
- @RequetMapping의 경로에 중복되는 부분이 있다
- 모든 요청이 @ReuquestMapping 이다

## V3 구조

- URL 요청시 중복되는 부분을 클래스 레벨로 뺐다
- @RequestMapping의 value 속성이 간단해 졌다
- 컨트롤러의 각 요청을 처리후 ModelAndView 객체를 반환하지 않는다
- 반환타입을 String 으로 설정하여 논리 view 이름을 반환하도록 설계
- @RequestMapping의 method 속성을 명시하여 똑같은 URL이라도 다른 메서드로 매핑해 줄수 있다
- @RequestMapping은 URL만 매핑하는 것이 아닌 HTTP method도 함께 구분할 수 있다
    - 이것을 @GetMapping , @PostMapping으로 더 편리하게 사용할 수 있다
    - Get , Post , Put , Delete , Patch 어노테이션이 있다
    

```java
@Controller
@RequestMapping("/springmvc/v3/members")
public class SpringMemberControllerV3 {

    private MemberRepository memberRepository = MemberRepository.getInstance();

    @GetMapping("/new-form")
    public String newForm() {
        return "new-form";
    }

    @PostMapping("/save")
    public String save(@RequestParam("username") String username , @RequestParam("age") int age, Model model) {

        Member member = new Member(username, age);
        memberRepository.save(member);

        model.addAttribute("member" , member);
        return "save-result";
    }

    @GetMapping()
    public String members(Model model) {
        List<Member> members = memberRepository.findAll();
        model.addAttribute("members", members);
        return "members";
    }
}
```

참고 -

[https://joont92.github.io/spring/@RequestMapping/](https://joont92.github.io/spring/@RequestMapping/)