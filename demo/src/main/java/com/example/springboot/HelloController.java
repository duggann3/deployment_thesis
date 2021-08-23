package com.example.springboot;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.MediaType;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


//@RestController
//public class HelloController {
//
//    @RequestMapping(value = "/", method = RequestMethod.GET,
//            produces = MediaType.IMAGE_JPEG_VALUE)
//
//    public void getImage(HttpServletResponse response) throws IOException {
//
//        var imgFile = new ClassPathResource("image/Generic_CD_Pipeline.png");
//
//        response.setContentType(MediaType.IMAGE_JPEG_VALUE);
//        StreamUtils.copy(imgFile.getInputStream(), response.getOutputStream());
//    }
//}

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "BLUE ARGO ROLLOUTS";
    }

}

