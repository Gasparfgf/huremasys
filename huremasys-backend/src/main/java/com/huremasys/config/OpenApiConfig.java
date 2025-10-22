package com.huremasys.config;

import org.eclipse.microprofile.openapi.annotations.OpenAPIDefinition;
import org.eclipse.microprofile.openapi.annotations.info.Contact;
import org.eclipse.microprofile.openapi.annotations.info.Info;
import org.eclipse.microprofile.openapi.annotations.info.License;
import org.eclipse.microprofile.openapi.annotations.servers.Server;

@OpenAPIDefinition(
    info = @Info(
        title = "Huremasys API",
        version = "1.0.0",
        description = "Human Resources Management API - Huremasys",
        contact = @Contact(
            name = "Gaspar Francisco",
            email = "gaspardarosafrancisco@gmail.com",
            url = "https://github.com/gasparfgf"
        ),
        license = @License(
            name = "Apache 2.0",
            url = "https://www.apache.org/licenses/LICENSE-2.0.html"
        )
    ),
    servers = {
        @Server(url = "http://localhost:8080/huremasys-backend", description = "Local server Payara")
    }
)
public class OpenApiConfig {
}
