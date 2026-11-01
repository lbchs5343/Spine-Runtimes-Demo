package com.bytedance.msdk.ox.ox.d.dq;

import com.bytedance.msdk.ox.ox.d.dq.d.ig;
import com.bytedance.msdk.ox.ox.d.dq.d.iw;
import com.bytedance.msdk.ox.ox.d.dq.d.mn;
import com.bytedance.msdk.ox.ox.d.dq.d.no;
import com.bytedance.msdk.ox.ox.d.dq.d.o;
import com.bytedance.msdk.ox.ox.d.dq.d.s;
import com.bytedance.msdk.ox.ox.d.dq.dq.ia;

/* loaded from: classes.dex */
public class p {
    public static com.bytedance.msdk.ox.dq.dq dq(com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.ox.dq.d dVar2) {
        if (dVar == null) {
            return null;
        }
        int jy = dVar.jy();
        switch (dVar.kx()) {
            case 1:
                return new com.bytedance.msdk.ox.ox.d.dq.d.dq(dVar2);
            case 2:
                return new mn(dVar2);
            case 3:
                return new ig(dVar2);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                return jy == 4 ? new o(dVar2) : jy == 5 ? new s(dVar2) : jy == 3 ? new com.bytedance.msdk.ox.ox.d.dq.d.dq(dVar2) : new o(dVar2);
            case 7:
                if (jy != 6 && jy == 7) {
                    return new iw(dVar2);
                }
                return new no(dVar2);
            case 8:
                return new iw(dVar2);
            case 9:
                return new s(dVar2);
            case 10:
                if (jy == 1) {
                    return new mn(dVar2);
                }
                if (jy == 2) {
                    return new iw(dVar2);
                }
                return null;
        }
    }

    public static com.bytedance.msdk.ox.dq.dq dq(String str, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.ox.dq.d dVar2) {
        if (dVar == null) {
            return null;
        }
        int jy = dVar.jy();
        switch (dVar.kx()) {
            case 1:
                return new com.bytedance.msdk.ox.ox.d.dq.dq.dq(str, dVar2);
            case 2:
                return new com.bytedance.msdk.ox.ox.d.dq.dq.iw(str, dVar2);
            case 3:
                return new ia(str, dVar2);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                return jy == 4 ? new com.bytedance.msdk.ox.ox.d.dq.dq.p(str, dVar2) : jy == 5 ? new com.bytedance.msdk.ox.ox.d.dq.dq.ox(str, dVar2) : jy == 3 ? new com.bytedance.msdk.ox.ox.d.dq.dq.dq(str, dVar2) : new com.bytedance.msdk.ox.ox.d.dq.dq.p(str, dVar2);
            case 7:
                if (jy != 6 && jy == 7) {
                    return new com.bytedance.msdk.ox.ox.d.dq.dq.s(str, dVar2);
                }
                return new com.bytedance.msdk.ox.ox.d.dq.dq.mn(str, dVar2);
            case 8:
                return new com.bytedance.msdk.ox.ox.d.dq.dq.s(str, dVar2);
            case 9:
                return new com.bytedance.msdk.ox.ox.d.dq.dq.ox(str, dVar2);
            case 10:
                if (jy == 1) {
                    return new com.bytedance.msdk.ox.ox.d.dq.dq.iw(str, dVar2);
                }
                if (jy == 2) {
                    return new com.bytedance.msdk.ox.ox.d.dq.dq.s(str, dVar2);
                }
                return null;
        }
    }
}
