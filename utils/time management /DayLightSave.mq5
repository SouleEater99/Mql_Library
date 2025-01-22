input int UTCOffsetDst = -4;  // User-defined UTC offset
input int UTCOffsetNonDst = -5;
input int DSTStartMonth = 3; // Month when DST starts (March = 3)
input int DSTStartDay = 9;   // Day when DST starts (Second Sunday)
input int DSTEndMonth = 11;  // Month when DST ends (November = 11)
input int DSTEndDay = 2;     // Day when DST ends (First Sunday)
input int UTCServerNonDst = 3;
input int UTCServerDst = 2;

bool isDstActive(datetime& time)
{
    bool isDst = false;
    MqlDateTime structTime;
    TimeToStruct(time, structTime);
    
    structTim

    // Check if within DST period
    if (structTime.mon > DSTStartMonth && structTime.mon < DSTEndMonth)
        isDst = true;
    else if (structTime.mon == DSTStartMonth)
    {
        if (structTime.day >= DSTStartDay)
            isDst = true;
    }
    else if (structTime.mon == DSTEndMonth)
    {
        if (structTime.day <= DSTEndDay)
            isDst = true;
    }
    
    
    return isDst;
}