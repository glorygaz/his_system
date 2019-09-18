package com.neu.service;

import com.neu.model.Homepage;

public interface HomepageService {
    void insertHomepage(Homepage homepage);

    Homepage searchHomepageByRegisId(int regisId);

    void updateHomepage(Homepage homepage);
}
