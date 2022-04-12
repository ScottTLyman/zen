using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using zen.Models;

namespace zen.Repositories
{
  public class ContRepository
  {
    private readonly IDbConnection _db;
    public ContRepository(IDbConnection db)
    {
      _db = db;
    }
    // GET ALL CONTRACTORS
    internal List<Contractor> GetAll()
    {
      string sql = "SELECT * FROM contractors";
      return _db.Query<Contractor>(sql).ToList();
    }

  }
}