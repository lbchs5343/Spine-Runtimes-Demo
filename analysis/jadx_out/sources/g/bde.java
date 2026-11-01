package g;

import java.util.Map;

/* loaded from: classes.dex */
public final class bde extends cbt {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11309a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bde(ekx ekxVar, int i) {
        super(ekxVar);
        this.f11309a = i;
    }

    @Override // g.faq
    public final Object dq(Map map) {
        Object dq;
        Object dq2;
        Object dq3;
        Object dq4;
        Object dq5;
        Object dq6;
        Object dq7;
        Object dq8;
        switch (this.f11309a) {
            case 0:
                return Boolean.valueOf(dyd.af(this.f12608b.dq(map)) && dyd.af(this.f12609c.dq(map)));
            case 1:
                Object dq9 = this.f12608b.dq(map);
                if (dq9 == null || (dq = this.f12609c.dq(map)) == null) {
                    return null;
                }
                Number number = (Number) dq9;
                Number number2 = (Number) dq;
                if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                    int intValue = number.intValue();
                    if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                        return Integer.valueOf(intValue / number2.intValue());
                    }
                    if (number2 instanceof Long) {
                        return Long.valueOf(intValue / number2.longValue());
                    }
                    if (number2 instanceof Float) {
                        return Float.valueOf(intValue / number2.floatValue());
                    }
                    if (number2 instanceof Double) {
                        return Double.valueOf(intValue / number2.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
                }
                if (number instanceof Long) {
                    long longValue = number.longValue();
                    if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                        return Long.valueOf(longValue / number2.intValue());
                    }
                    if (number2 instanceof Long) {
                        return Long.valueOf(longValue / number2.longValue());
                    }
                    if (number2 instanceof Float) {
                        return Float.valueOf(longValue / number2.floatValue());
                    }
                    if (number2 instanceof Double) {
                        return Double.valueOf(longValue / number2.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
                }
                if (number instanceof Float) {
                    float floatValue = number.floatValue();
                    if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                        return Float.valueOf(floatValue / number2.intValue());
                    }
                    if (number2 instanceof Long) {
                        return Float.valueOf(floatValue / number2.longValue());
                    }
                    if (number2 instanceof Float) {
                        return Float.valueOf(floatValue / number2.floatValue());
                    }
                    if (number2 instanceof Double) {
                        return Double.valueOf(floatValue / number2.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
                }
                if (!(number instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number, "This type of addition operation is not supported"));
                }
                double doubleValue = number.doubleValue();
                if ((number2 instanceof Integer) || (number2 instanceof Short) || (number2 instanceof Byte)) {
                    return Double.valueOf(doubleValue / number2.intValue());
                }
                if (number2 instanceof Long) {
                    return Double.valueOf(doubleValue / number2.longValue());
                }
                if (number2 instanceof Float) {
                    return Double.valueOf(doubleValue / number2.floatValue());
                }
                if (number2 instanceof Double) {
                    return Double.valueOf(doubleValue / number2.doubleValue());
                }
                throw new UnsupportedOperationException(tn.s(number2, "This type of addition operation is not supported"));
            case 2:
                if (this.f12608b.dq(map) == null || (dq2 = this.f12609c.dq(map)) == null) {
                    return null;
                }
                return Boolean.valueOf(!ckd.ai(r0, (Number) dq2).booleanValue());
            case 3:
                Object dq10 = this.f12608b.dq(map);
                if (dq10 == null || (dq3 = this.f12609c.dq(map)) == null) {
                    return null;
                }
                Number number3 = (Number) dq10;
                Number number4 = (Number) dq3;
                if ((number3 instanceof Integer) || (number3 instanceof Short) || (number3 instanceof Byte)) {
                    int intValue2 = number3.intValue();
                    if ((number4 instanceof Integer) || (number4 instanceof Short) || (number4 instanceof Byte)) {
                        return Integer.valueOf(intValue2 % number4.intValue());
                    }
                    if (number4 instanceof Long) {
                        return Long.valueOf(intValue2 % number4.longValue());
                    }
                    if (number4 instanceof Float) {
                        return Float.valueOf(intValue2 % number4.floatValue());
                    }
                    if (number4 instanceof Double) {
                        return Double.valueOf(intValue2 % number4.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number4, "This type of addition operation is not supported"));
                }
                if (number3 instanceof Long) {
                    long longValue2 = number3.longValue();
                    if ((number4 instanceof Integer) || (number4 instanceof Short) || (number4 instanceof Byte)) {
                        return Long.valueOf(longValue2 % number4.intValue());
                    }
                    if (number4 instanceof Long) {
                        return Long.valueOf(longValue2 % number4.longValue());
                    }
                    if (number4 instanceof Float) {
                        return Float.valueOf(longValue2 % number4.floatValue());
                    }
                    if (number4 instanceof Double) {
                        return Double.valueOf(longValue2 % number4.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number4, "This type of addition operation is not supported"));
                }
                if (number3 instanceof Float) {
                    float floatValue2 = number3.floatValue();
                    if ((number4 instanceof Integer) || (number4 instanceof Short) || (number4 instanceof Byte)) {
                        return Float.valueOf(floatValue2 % number4.intValue());
                    }
                    if (number4 instanceof Long) {
                        return Float.valueOf(floatValue2 % number4.longValue());
                    }
                    if (number4 instanceof Float) {
                        return Float.valueOf(floatValue2 % number4.floatValue());
                    }
                    if (number4 instanceof Double) {
                        return Double.valueOf(floatValue2 % number4.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number4, "This type of addition operation is not supported"));
                }
                if (!(number3 instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number3, "This type of addition operation is not supported"));
                }
                double doubleValue2 = number3.doubleValue();
                if ((number4 instanceof Integer) || (number4 instanceof Short) || (number4 instanceof Byte)) {
                    return Double.valueOf(doubleValue2 % number4.intValue());
                }
                if (number4 instanceof Long) {
                    return Double.valueOf(doubleValue2 % number4.longValue());
                }
                if (number4 instanceof Float) {
                    return Double.valueOf(doubleValue2 % number4.floatValue());
                }
                if (number4 instanceof Double) {
                    return Double.valueOf(doubleValue2 % number4.doubleValue());
                }
                throw new UnsupportedOperationException(tn.s(number4, "This type of addition operation is not supported"));
            case 4:
                Object dq11 = this.f12608b.dq(map);
                if (dq11 == null || (dq4 = this.f12609c.dq(map)) == null) {
                    return null;
                }
                return ckd.ai(dq11, (Number) dq4);
            case 5:
                Object dq12 = this.f12608b.dq(map);
                if (dq12 == null || (dq5 = this.f12609c.dq(map)) == null) {
                    return null;
                }
                return erl.ao(dq12, (Number) dq5);
            case 6:
                Object dq13 = this.f12608b.dq(map);
                if (dq13 == null || (dq6 = this.f12609c.dq(map)) == null) {
                    return null;
                }
                Number number5 = (Number) dq13;
                Number number6 = (Number) dq6;
                if ((number5 instanceof Integer) || (number5 instanceof Short) || (number5 instanceof Byte)) {
                    int intValue3 = number5.intValue();
                    if ((number6 instanceof Integer) || (number6 instanceof Short) || (number6 instanceof Byte)) {
                        return Integer.valueOf(number6.intValue() * intValue3);
                    }
                    if (number6 instanceof Long) {
                        return Long.valueOf(number6.longValue() * intValue3);
                    }
                    if (number6 instanceof Float) {
                        return Float.valueOf(number6.floatValue() * intValue3);
                    }
                    if (number6 instanceof Double) {
                        return Double.valueOf(number6.doubleValue() * intValue3);
                    }
                    throw new UnsupportedOperationException(tn.s(number6, "This type of addition operation is not supported"));
                }
                if (number5 instanceof Long) {
                    long longValue3 = number5.longValue();
                    if ((number6 instanceof Integer) || (number6 instanceof Short) || (number6 instanceof Byte)) {
                        return Long.valueOf(longValue3 * number6.intValue());
                    }
                    if (number6 instanceof Long) {
                        return Long.valueOf(number6.longValue() * longValue3);
                    }
                    if (number6 instanceof Float) {
                        return Float.valueOf(number6.floatValue() * longValue3);
                    }
                    if (number6 instanceof Double) {
                        return Double.valueOf(number6.doubleValue() * longValue3);
                    }
                    throw new UnsupportedOperationException(tn.s(number6, "This type of addition operation is not supported"));
                }
                if (number5 instanceof Float) {
                    float floatValue3 = number5.floatValue();
                    if ((number6 instanceof Integer) || (number6 instanceof Short) || (number6 instanceof Byte)) {
                        return Float.valueOf(floatValue3 * number6.intValue());
                    }
                    if (number6 instanceof Long) {
                        return Float.valueOf(floatValue3 * number6.longValue());
                    }
                    if (number6 instanceof Float) {
                        return Float.valueOf(number6.floatValue() * floatValue3);
                    }
                    if (number6 instanceof Double) {
                        return Double.valueOf(number6.doubleValue() * floatValue3);
                    }
                    throw new UnsupportedOperationException(tn.s(number6, "This type of addition operation is not supported"));
                }
                if (!(number5 instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number5, "This type of addition operation is not supported"));
                }
                double doubleValue3 = number5.doubleValue();
                if ((number6 instanceof Integer) || (number6 instanceof Short) || (number6 instanceof Byte)) {
                    return Double.valueOf(doubleValue3 * number6.intValue());
                }
                if (number6 instanceof Long) {
                    return Double.valueOf(doubleValue3 * number6.longValue());
                }
                if (number6 instanceof Float) {
                    return Double.valueOf(doubleValue3 * number6.floatValue());
                }
                if (number6 instanceof Double) {
                    return Double.valueOf(number6.doubleValue() * doubleValue3);
                }
                throw new UnsupportedOperationException(tn.s(number6, "This type of addition operation is not supported"));
            case 7:
                Object dq14 = this.f12608b.dq(map);
                if (dq14 == null || (dq7 = this.f12609c.dq(map)) == null) {
                    return null;
                }
                Number number7 = (Number) dq14;
                Number number8 = (Number) dq7;
                if ((number7 instanceof Integer) || (number7 instanceof Short) || (number7 instanceof Byte)) {
                    int intValue4 = number7.intValue();
                    if ((number8 instanceof Integer) || (number8 instanceof Short) || (number8 instanceof Byte)) {
                        return Integer.valueOf(intValue4 - number8.intValue());
                    }
                    if (number8 instanceof Long) {
                        return Long.valueOf(intValue4 - number8.longValue());
                    }
                    if (number8 instanceof Float) {
                        return Float.valueOf(intValue4 - number8.floatValue());
                    }
                    if (number8 instanceof Double) {
                        return Double.valueOf(intValue4 - number8.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number8, "This type of addition operation is not supported"));
                }
                if (number7 instanceof Long) {
                    long longValue4 = number7.longValue();
                    if ((number8 instanceof Integer) || (number8 instanceof Short) || (number8 instanceof Byte)) {
                        return Long.valueOf(longValue4 - number8.intValue());
                    }
                    if (number8 instanceof Long) {
                        return Long.valueOf(longValue4 - number8.longValue());
                    }
                    if (number8 instanceof Float) {
                        return Float.valueOf(longValue4 - number8.floatValue());
                    }
                    if (number8 instanceof Double) {
                        return Double.valueOf(longValue4 - number8.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number8, "This type of addition operation is not supported"));
                }
                if (number7 instanceof Float) {
                    float floatValue4 = number7.floatValue();
                    if ((number8 instanceof Integer) || (number8 instanceof Short) || (number8 instanceof Byte)) {
                        return Float.valueOf(floatValue4 - number8.intValue());
                    }
                    if (number8 instanceof Long) {
                        return Float.valueOf(floatValue4 - number8.longValue());
                    }
                    if (number8 instanceof Float) {
                        return Float.valueOf(floatValue4 - number8.floatValue());
                    }
                    if (number8 instanceof Double) {
                        return Double.valueOf(floatValue4 - number8.doubleValue());
                    }
                    throw new UnsupportedOperationException(tn.s(number8, "This type of addition operation is not supported"));
                }
                if (!(number7 instanceof Double)) {
                    throw new UnsupportedOperationException(tn.s(number7, "This type of addition operation is not supported"));
                }
                double doubleValue4 = number7.doubleValue();
                if ((number8 instanceof Integer) || (number8 instanceof Short) || (number8 instanceof Byte)) {
                    return Double.valueOf(doubleValue4 - number8.intValue());
                }
                if (number8 instanceof Long) {
                    return Double.valueOf(doubleValue4 - number8.longValue());
                }
                if (number8 instanceof Float) {
                    return Double.valueOf(doubleValue4 - number8.floatValue());
                }
                if (number8 instanceof Double) {
                    return Double.valueOf(doubleValue4 - number8.doubleValue());
                }
                throw new UnsupportedOperationException(tn.s(number8, "This type of addition operation is not supported"));
            case 8:
                return Boolean.valueOf(dyd.af(this.f12608b.dq(map)) || dyd.af(this.f12609c.dq(map)));
            case 9:
                Object dq15 = this.f12608b.dq(map);
                Object dq16 = this.f12609c.dq(map);
                return (dq15 == null && dq16 == null) ? Boolean.TRUE : (dq15 != null || dq16 == null) ? (dq15 == null || dq16 != null) ? ((dq15 instanceof Number) && (dq16 instanceof Number)) ? Boolean.valueOf(egh.av((Number) dq15, (Number) dq16)) : Boolean.valueOf(dq15.equals(dq16)) : Boolean.FALSE : Boolean.FALSE;
            case 10:
                Object dq17 = this.f12608b.dq(map);
                Object dq18 = this.f12609c.dq(map);
                return (dq17 == null && dq18 == null) ? Boolean.FALSE : (dq17 != null || dq18 == null) ? (dq17 == null || dq18 != null) ? ((dq17 instanceof Number) && (dq18 instanceof Number)) ? Boolean.valueOf(!egh.av((Number) dq17, (Number) dq18)) : Boolean.valueOf(!dq17.equals(dq18)) : Boolean.TRUE : Boolean.TRUE;
            default:
                if (this.f12608b.dq(map) == null || (dq8 = this.f12609c.dq(map)) == null) {
                    return null;
                }
                return Boolean.valueOf(!erl.ao(r0, (Number) dq8).booleanValue());
        }
    }

    @Override // g.cbt
    public String toString() {
        switch (this.f11309a) {
            case 0:
                return d();
            case 8:
                return d();
            default:
                return super.toString();
        }
    }
}
