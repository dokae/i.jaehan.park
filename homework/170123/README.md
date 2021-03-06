#Week 3. Homework

<br>

##라이브러리와 프레임워크의 차이?

<br>

### 라이브러리:

**자주 쓰일만한 함수(유틸, 클래스)들을 묶어두어 개발자가 필요할 때 편리하게 쓸 수 있도록 한 것.** 라이브러리는 보통 큰 개념으로 볼 때 하나의 기능을 제공하며 그 기능을 구현하기 위한 (또는 그 기능과 관련된) 부수적인 여러 개의 작은 기능들을 제공한다. 예를 들어 GSON 라이브러리 (구글에서 제공하는 JSON 데이터 변환 라이브러리) 같은 경우에 큰 개념적으로 보면 JSON 형식의 데이터를 다른 형식으로 변환하는 기능을 제공하고 있으며 세부적인 기능들로는 JSON 형식의 데이터를 Java Object  형식으로 변환하는 기능을 제공하고 반대로 Java Object에 저장된 데이터를 JSON 형식의 데이터로 변환해주는 기능을 제공하고 있다. 

### 프레임워크:
**소프트웨어의 구체적인 부분에 해당하는 설계와 구현을 재사용이 가능하게끔 일련의 협업화된 형태로 클래스들을 제공하는 것.** 프레임워크는 하나의 특정 기능을 제공하기 보다는 어플리케이션을 만드는데 있어서 뼈대가 될 수 있는 기능들을 제공하고 있다. 예를 들어 Spring Framework를 이용해서 MVC 모델의 웹어플리케이션을 만든다고 했을 때 스프링은 웹어플리케이션을 만들기 위한 기본적인 기능들만을 제공하며 (UI와 서버 쪽의 연동이나 데이터의 교환 또는 공유) 웹어플리케이션 구동을 위한 추가적인 기능들 (예를 들어 Front-end 쪽 디자인 관련 기능들이라던지 또는 서버의 효율성을 증진시킬 수 있는 기능들)에 대한 지원을 기본적으로 하고 있지 않는다. 


<br>
![Libray, Framework](http://www.programcreek.com/wp-content/uploads/2011/09/framework-vs-library.png)
<br><br>

위의 차이점 때문에 라이브러리와 프레임워크는 사용 방식에서 차이가 발생한다. 우선 라이브러리는 보통 어플리케이션에 포함이 되어서 사용되고 있으며 개발자의 입장에서 봤을 때 라이브러리에서 제공하는 API 호출을 어플리케이션에서 어떻게 해서 사용할 지를 고민된다. 그 반면에 프레임워크는 어플리케이션의 뼈대가 되기 때문에 어플리케이션의 메인 코드가 프레임워크의 여러 부분에 접합되어서 사용되어지며 (프레임워크가 사용자가 작성한 코드를 호출한다) 개발자의 입장에서 봤을 때 본인의 코드가 프레임워크와 얼마나 연동이 잘 되어서 사용되어지는 지를 고민하게 된다. 

만약 로봇을 만든다고 가정을 했을 때 프레임워크를 사용하게 되면 로봇에 대한 기본적인 골격을 프레임워크가 제공하는 것이며 개발자는 거기에 사람처럼 보일 수 있게 실리콘 피부를 입힌다거나 달리기를 잘 할 수 있는 로봇, 또는 시력과 청력이 아주 좋은 로봇을 만드는 일을 한다고 생각하면 된다. 반면에 라이브러리를 사용해서 로봇을 만든다면 기본적인 골격은 직접 만들지만 특정 기능 또는 특정 부위 등은 라이브러리를 이용해서 구현한다고 생각하시면 된다.

프레임워크와 라이브러리의 차이는 제어 흐름에 대한 주도성이 누구에게/ 어디에 있는가이다. 라이브러리는 라이브러리를 가져다가 사용하고 호출하지만, 프레임워크는 가져다가 사용한다기 보다는 프레임워크의 틀 안에 들어가서 사용한다는 개념이다. 프레임워크는 전체적인 흐름을 스스로가 쥐고 있고 개발자는 그 틀 안에서 필요한 코드를 작성하고 구현을 하는 반면, 라이브러리는 사용자가 전체적인 흐름을 구현하며 라이브러리를 가져다가 쓰는 것이라고 보면 된다.


