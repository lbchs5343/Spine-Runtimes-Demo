package g;

import j$.util.stream.Stream;

/* loaded from: classes.dex */
public enum fha {
    UTF8(1, -1),
    INTEGER(3, 4),
    FLOAT(4, 4),
    LONG(5, 8),
    DOUBLE(6, 8),
    CLASS(7, 2),
    STRING(8, 2),
    FIELD_REF(9, 4),
    METHOD_REF(10, 4),
    INTERFACE_METHOD_REF(11, 4),
    NAME_AND_TYPE(12, 4),
    METHOD_HANDLE(15, 3),
    METHOD_TYPE(16, 2),
    DYNAMIC(17, 4),
    INVOKE_DYNAMIC(18, 4),
    MODULE(19, 2),
    PACKAGE(20, 2);


    /* renamed from: a, reason: collision with root package name */
    public static final fha[] f16779a;
    private final int dataSize;
    private final byte tag;

    static {
        fha[] values = values();
        int i = 0;
        fha[] fhaVarArr = new fha[Stream.a.of(values).mapToInt(new dbm(6)).max().orElseThrow(new cqk(i)) + 1];
        int length = values.length;
        while (i < length) {
            fha fhaVar = values[i];
            fhaVarArr[fhaVar.tag] = fhaVar;
            i++;
        }
        f16779a = fhaVarArr;
    }

    fha(int i, int i2) {
        this.tag = (byte) i;
        this.dataSize = i2;
    }

    public final int c() {
        return this.dataSize;
    }

    public final byte d() {
        return this.tag;
    }
}
