import akka.actor.ActorSystem
import akka.http.scaladsl.Http
import akka.http.scaladsl.model._
import akka.http.scaladsl.unmarshalling.Unmarshal
import akka.stream.ActorMaterializer
import scala.concurrent.Future
import scala.util.{Failure, Success}

object ApiRequest extends App {
  implicit val system = ActorSystem()
  implicit val materializer = ActorMaterializer()
  implicit val executionContext = system.dispatcher

  val url = "https://api.example.com/data"
  val request = HttpRequest(HttpMethods.GET, uri = url)
    .withHeaders(
      HttpHeaders.Authorization("Bearer YOUR_TOKEN"),
      HttpHeaders.Accept(MediaTypes.`application/json`)
    )

  val responseFuture: Future[HttpResponse] = Http().singleRequest(request)

  responseFuture.onComplete {
    case Success(response) =>
      Unmarshal(response.entity).to[String].foreach(println)
    case Failure(exception) =>
      println(s"Error: $exception")
  }
}
