package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bytedance.sdk.component.ox.d.wp;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes.dex */
public final class no {

    /* renamed from: d, reason: collision with root package name */
    public final int f2077d;
    public final wp dq;
    public final String ox;

    public no(wp wpVar, int i, String str) {
        this.dq = wpVar;
        this.f2077d = i;
        this.ox = str;
    }

    public static no dq(String str) throws IOException {
        wp wpVar;
        int i;
        String str2;
        if (str.startsWith("HTTP/1.")) {
            i = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                wpVar = wp.HTTP_1_0;
            } else {
                if (charAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                wpVar = wp.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            wpVar = wp.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                str2 = "";
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                str2 = str.substring(i + 4);
            }
            return new no(wpVar, parseInt, str2);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.dq == wp.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f2077d);
        if (this.ox != null) {
            sb.append(' ');
            sb.append(this.ox);
        }
        return sb.toString();
    }
}
