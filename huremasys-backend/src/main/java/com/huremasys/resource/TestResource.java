package com.huremasys.resource;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

/**
 * Test class resource.
 */
@Path("/test")
public class TestResource {

	@GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response test() {
        return Response.ok("{\"status\":\"ok\"}").build();
    }
}
