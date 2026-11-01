package com.bytedance.sdk.component.ox.d;

import java.io.IOException;

/* loaded from: classes.dex */
public enum wp {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");

    private final String s;

    wp(String str) {
        this.s = str;
    }

    public static wp dq(String str) throws IOException {
        wp wpVar = HTTP_1_0;
        if (str.equals(wpVar.s)) {
            return wpVar;
        }
        wp wpVar2 = HTTP_1_1;
        if (str.equals(wpVar2.s)) {
            return wpVar2;
        }
        wp wpVar3 = HTTP_2;
        if (str.equals(wpVar3.s)) {
            return wpVar3;
        }
        wp wpVar4 = SPDY_3;
        if (str.equals(wpVar4.s)) {
            return wpVar4;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.s;
    }
}
