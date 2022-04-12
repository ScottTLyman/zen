using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using zen.Models;
using zen.Repositories;

namespace zen.Services
{
  [ApiController]
  [Route("api/[controller]")]
  public class ContService
  {
    private readonly ContRepository _contRepo;
    public ContService(ContRepository contRepo)
    {
      _contRepo = contRepo;
    }
    // GET ALL CONTRACTORS
    internal List<Contractor> GetAll()
    {
      return _contRepo.GetAll();
    }
  }
}