package com.bykv.vk.openvk.preload.dq;

import java.math.BigInteger;

/* loaded from: classes.dex */
public final class f extends no {
    public final Object dq;

    public f(Boolean bool) {
        this.dq = com.bykv.vk.openvk.preload.dq.d.dq.dq(bool);
    }

    public f(Number number) {
        this.dq = com.bykv.vk.openvk.preload.dq.d.dq.dq(number);
    }

    public f(String str) {
        this.dq = com.bykv.vk.openvk.preload.dq.d.dq.dq(str);
    }

    private static boolean dq(f fVar) {
        Object obj = fVar.dq;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final String d() {
        Object obj = this.dq;
        return obj instanceof Number ? dq().toString() : obj instanceof Boolean ? ((Boolean) obj).toString() : (String) obj;
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final Number dq() {
        Object obj = this.dq;
        return obj instanceof String ? new com.bykv.vk.openvk.preload.dq.d.mn((String) obj) : (Number) obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (this.dq == null) {
            return fVar.dq == null;
        }
        if (dq(this) && dq(fVar)) {
            return dq().longValue() == fVar.dq().longValue();
        }
        Object obj2 = this.dq;
        if (!(obj2 instanceof Number) || !(fVar.dq instanceof Number)) {
            return obj2.equals(fVar.dq);
        }
        double doubleValue = dq().doubleValue();
        double doubleValue2 = fVar.dq().doubleValue();
        return doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2));
    }

    public final int hashCode() {
        long doubleToLongBits;
        if (this.dq == null) {
            return 31;
        }
        if (dq(this)) {
            doubleToLongBits = dq().longValue();
        } else {
            Object obj = this.dq;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(dq().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final boolean iw() {
        Object obj = this.dq;
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(d());
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final double ox() {
        return this.dq instanceof Number ? dq().doubleValue() : Double.parseDouble(d());
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final long p() {
        return this.dq instanceof Number ? dq().longValue() : Long.parseLong(d());
    }

    @Override // com.bykv.vk.openvk.preload.dq.no
    public final int s() {
        return this.dq instanceof Number ? dq().intValue() : Integer.parseInt(d());
    }
}
