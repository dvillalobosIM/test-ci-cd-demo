import cucumber.api.java8.En;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.hamcrest.Matchers;

import java.net.URL;

public class TestSteps implements En {
    private String endpointUrl = "https://spring-demo-cicd-stg.herokuapp.com/";
    private Response response;

    public TestSteps() {
        Given("Request with {string} as parameter", (String parameter) -> {
            this.endpointUrl = this.endpointUrl + parameter;
        });
        When("send the request", () -> {
            this.response = RestAssured.given().request().get(new URL(this.endpointUrl));
        });
        Then("response status should be {int}", (Integer status) -> {
            response.then().assertThat().statusCode(200);
        });
        Then("number in response body should be {int}", (Integer number) -> {
            response.then().assertThat().body("number", Matchers.equalTo(number));
        });
    }
}
