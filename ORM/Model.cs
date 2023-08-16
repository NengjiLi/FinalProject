namespace ORM
{
    public class Members
    {
        public int MemberID { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public int PhoneNUmber { get; set; }
        public string Email { get; set; }
        public string MembershipType { get; set; }

        public Members(int id, string firstname, string lastname,int number,string email,string type)
        {
            MemberID = id;
            First_Name = firstname;
            Last_Name = lastname;
            PhoneNUmber = number;
            Email = email;
            MembershipType = type;
        }
    }


}