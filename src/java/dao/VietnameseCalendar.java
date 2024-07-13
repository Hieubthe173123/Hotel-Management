package dao;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class VietnameseCalendar {
    public static List<List<String>> getMonth(int year, int month) {
        List<List<String>> monthData = new ArrayList<>();
        Calendar cal = Calendar.getInstance();
        cal.set(year, month - 1, 1);

        int daysInMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
        int weekday = cal.get(Calendar.DAY_OF_WEEK);

        List<String> week = new ArrayList<>();
        // Fill in the first week with empty days until the first day of the month
        for (int i = Calendar.SUNDAY; i < weekday; i++) {
            week.add("");
        }

        // Fill the calendar with day numbers
        for (int i = 1; i <= daysInMonth; i++) {
            week.add(String.valueOf(i));
            if ((i + weekday - 1) % 7 == 0 || i == daysInMonth) {
                monthData.add(new ArrayList<>(week));
                week.clear();
            }
        }
        return monthData;
    }
}
