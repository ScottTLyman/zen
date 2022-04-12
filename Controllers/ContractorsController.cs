using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using zen.Services;
using zen.Models;
using System;

namespace zen.Controllers
{
  [ApiController]
  [Route("api/[controller]")]
  public class ContController : ControllerBase
  {
    private readonly ContService _contService;

    public ContController(ContService contService)
    {
      _contService = contService;
    }
    // GET ALL CONTRACTORS
        [HttpGet]
    public ActionResult<List<Contractor>> GetAll()
    {
      try
      {
        List<Contractor> contractors = _contService.GetAll();
        return Ok(contractors);
      }
      catch (Exception e)
      {
        return BadRequest(e.Message);
      }
    }
  }
}