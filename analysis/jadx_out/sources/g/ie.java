package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class ie {
    public static aqt a(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        aqt aqtVar = aqt.HTTP_1_0;
        str2 = aqtVar.protocol;
        if (str.equals(str2)) {
            return aqtVar;
        }
        aqt aqtVar2 = aqt.HTTP_1_1;
        str3 = aqtVar2.protocol;
        if (str.equals(str3)) {
            return aqtVar2;
        }
        aqt aqtVar3 = aqt.H2_PRIOR_KNOWLEDGE;
        str4 = aqtVar3.protocol;
        if (str.equals(str4)) {
            return aqtVar3;
        }
        aqt aqtVar4 = aqt.HTTP_2;
        str5 = aqtVar4.protocol;
        if (str.equals(str5)) {
            return aqtVar4;
        }
        aqt aqtVar5 = aqt.SPDY_3;
        str6 = aqtVar5.protocol;
        if (str.equals(str6)) {
            return aqtVar5;
        }
        aqt aqtVar6 = aqt.QUIC;
        str7 = aqtVar6.protocol;
        if (str.equals(str7)) {
            return aqtVar6;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }
}
