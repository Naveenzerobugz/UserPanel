using System;

/// <summary>
/// Summary description for Response
/// </summary>
public class Response
{
    //This 
    public Response()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool Success { get; set; }
    public int Id { get; set; }
    public string otp { get; set; }
    public string uname { get; set; }
    public string Message { get; set; }
    public string Details { get; set; }
    public DateTime Date { get; set; }
}