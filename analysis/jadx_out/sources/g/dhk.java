package g;

import java.util.Map;

/* loaded from: classes.dex */
public final class dhk extends cbt {

    /* renamed from: a, reason: collision with root package name */
    public static final cqw f14182a = new cqw(3);

    @Override // g.faq
    public final Object dq(Map map) {
        Object dq;
        Object dq2 = this.f12608b.dq(map);
        if (dq2 == null || (dq = this.f12609c.dq(map)) == null) {
            return null;
        }
        if ((dq2 instanceof String) || (dq instanceof String)) {
            StringBuilder sb = (StringBuilder) f14182a.get();
            sb.append(dq2);
            sb.append(dq);
            String sb2 = sb.toString();
            sb.setLength(0);
            return sb2;
        }
        Number number = (Number) dq2;
        Number number2 = (Number) dq;
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            int intValue = number.intValue();
            if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                return Integer.valueOf(number2.intValue() + intValue);
            }
            if (number2 instanceof Long) {
                return Long.valueOf(number2.longValue() + intValue);
            }
            if (number2 instanceof Float) {
                return Float.valueOf(number2.floatValue() + intValue);
            }
            if (number2 instanceof Double) {
                return Double.valueOf(number2.doubleValue() + intValue);
            }
            throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
        }
        if (number instanceof Long) {
            long longValue = number.longValue();
            if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                return Long.valueOf(longValue + number2.intValue());
            }
            if (number2 instanceof Long) {
                return Long.valueOf(number2.longValue() + longValue);
            }
            if (number2 instanceof Float) {
                return Float.valueOf(number2.floatValue() + longValue);
            }
            if (number2 instanceof Double) {
                return Double.valueOf(number2.doubleValue() + longValue);
            }
            throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
        }
        if (number instanceof Float) {
            float floatValue = number.floatValue();
            if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                return Float.valueOf(floatValue + number2.intValue());
            }
            if (number2 instanceof Long) {
                return Float.valueOf(floatValue + number2.longValue());
            }
            if (number2 instanceof Float) {
                return Float.valueOf(number2.floatValue() + floatValue);
            }
            if (number2 instanceof Double) {
                return Double.valueOf(number2.doubleValue() + floatValue);
            }
            throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
        }
        if (!(number instanceof Double)) {
            throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
        }
        double doubleValue = number.doubleValue();
        if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
            return Double.valueOf(doubleValue + number2.intValue());
        }
        if (number2 instanceof Long) {
            return Double.valueOf(doubleValue + number2.longValue());
        }
        if (number2 instanceof Float) {
            return Double.valueOf(doubleValue + number2.floatValue());
        }
        if (number2 instanceof Double) {
            return Double.valueOf(number2.doubleValue() + doubleValue);
        }
        throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
    }
}
