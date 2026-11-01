package com.bykv.vk.openvk.preload.dq.d;

import java.math.BigDecimal;

/* loaded from: classes.dex */
public final class mn extends Number {
    private final String dq;

    public mn(String str) {
        this.dq = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.dq);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mn)) {
            return false;
        }
        String str = this.dq;
        String str2 = ((mn) obj).dq;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.dq);
    }

    public final int hashCode() {
        return this.dq.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            try {
                return Integer.parseInt(this.dq);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.dq);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.dq).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.dq);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.dq).longValue();
        }
    }

    public final String toString() {
        return this.dq;
    }
}
