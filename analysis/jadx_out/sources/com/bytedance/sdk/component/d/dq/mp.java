package com.bytedance.sdk.component.d.dq;

import java.io.IOException;

/* loaded from: classes.dex */
public enum mp {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");

    private final String s;

    mp(String str) {
        this.s = str;
    }

    public static mp dq(String str) throws IOException {
        mp mpVar = HTTP_1_0;
        if (str.equals(mpVar.s)) {
            return mpVar;
        }
        mp mpVar2 = HTTP_1_1;
        if (str.equals(mpVar2.s)) {
            return mpVar2;
        }
        mp mpVar3 = HTTP_2;
        if (str.equals(mpVar3.s)) {
            return mpVar3;
        }
        mp mpVar4 = SPDY_3;
        if (str.equals(mpVar4.s)) {
            return mpVar4;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.s;
    }
}
