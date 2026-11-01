package com.ss.android.socialbase.downloader.iw;

import java.util.List;

/* loaded from: classes.dex */
public class jy {
    public static long d(List<kk> list) {
        long j;
        long j2;
        long j3 = 0;
        loop0: while (true) {
            j = -1;
            j2 = -1;
            for (kk kkVar : list) {
                if (j == -1) {
                    if (kkVar.dq() > 0) {
                        j = kkVar.ox();
                        j2 = kkVar.p();
                    }
                } else if (kkVar.ox() > j2) {
                    j3 += j2 - j;
                    if (kkVar.dq() > 0) {
                        j = kkVar.ox();
                        j2 = kkVar.p();
                    }
                } else if (kkVar.p() > j2) {
                    j2 = kkVar.p();
                }
            }
        }
        return (j < 0 || j2 <= j) ? j3 : (j2 - j) + j3;
    }

    public static long dq(List<kk> list) {
        int size = list.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            kk kkVar = list.get(i);
            if (kkVar.ox() > j) {
                break;
            }
            if (kkVar.s() > j) {
                j = kkVar.s();
            }
        }
        return j;
    }
}
