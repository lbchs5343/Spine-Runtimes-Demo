package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dnd {
    public static final dnd ENCODED_ANNOTATION;
    public static final dnd ENCODED_ARRAY;
    public static final dnd ENCODED_BOOLEAN;
    public static final dnd ENCODED_BYTE;
    public static final dnd ENCODED_CHAR;
    public static final dnd ENCODED_DOUBLE;
    public static final dnd ENCODED_ENUM;
    public static final dnd ENCODED_FIELD;
    public static final dnd ENCODED_FLOAT;
    public static final dnd ENCODED_INT;
    public static final dnd ENCODED_LONG;
    public static final dnd ENCODED_METHOD;
    public static final dnd ENCODED_METHOD_HANDLE;
    public static final dnd ENCODED_METHOD_TYPE;
    public static final dnd ENCODED_NULL;
    public static final dnd ENCODED_SHORT;
    public static final dnd ENCODED_STRING;
    public static final dnd ENCODED_TYPE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dnd[] f14453a;

    static {
        dnd dndVar = new dnd("ENCODED_NULL", 0);
        ENCODED_NULL = dndVar;
        dnd dndVar2 = new dnd("ENCODED_BOOLEAN", 1);
        ENCODED_BOOLEAN = dndVar2;
        dnd dndVar3 = new dnd("ENCODED_BYTE", 2);
        ENCODED_BYTE = dndVar3;
        dnd dndVar4 = new dnd("ENCODED_SHORT", 3);
        ENCODED_SHORT = dndVar4;
        dnd dndVar5 = new dnd("ENCODED_CHAR", 4);
        ENCODED_CHAR = dndVar5;
        dnd dndVar6 = new dnd("ENCODED_INT", 5);
        ENCODED_INT = dndVar6;
        dnd dndVar7 = new dnd("ENCODED_LONG", 6);
        ENCODED_LONG = dndVar7;
        dnd dndVar8 = new dnd("ENCODED_FLOAT", 7);
        ENCODED_FLOAT = dndVar8;
        dnd dndVar9 = new dnd("ENCODED_DOUBLE", 8);
        ENCODED_DOUBLE = dndVar9;
        dnd dndVar10 = new dnd("ENCODED_STRING", 9);
        ENCODED_STRING = dndVar10;
        dnd dndVar11 = new dnd("ENCODED_TYPE", 10);
        ENCODED_TYPE = dndVar11;
        dnd dndVar12 = new dnd("ENCODED_ENUM", 11);
        ENCODED_ENUM = dndVar12;
        dnd dndVar13 = new dnd("ENCODED_FIELD", 12);
        ENCODED_FIELD = dndVar13;
        dnd dndVar14 = new dnd("ENCODED_METHOD", 13);
        ENCODED_METHOD = dndVar14;
        dnd dndVar15 = new dnd("ENCODED_METHOD_TYPE", 14);
        ENCODED_METHOD_TYPE = dndVar15;
        dnd dndVar16 = new dnd("ENCODED_METHOD_HANDLE", 15);
        ENCODED_METHOD_HANDLE = dndVar16;
        dnd dndVar17 = new dnd("ENCODED_ARRAY", 16);
        ENCODED_ARRAY = dndVar17;
        dnd dndVar18 = new dnd("ENCODED_ANNOTATION", 17);
        ENCODED_ANNOTATION = dndVar18;
        f14453a = new dnd[]{dndVar, dndVar2, dndVar3, dndVar4, dndVar5, dndVar6, dndVar7, dndVar8, dndVar9, dndVar10, dndVar11, dndVar12, dndVar13, dndVar14, dndVar15, dndVar16, dndVar17, dndVar18};
    }

    public static dnd valueOf(String str) {
        return (dnd) Enum.valueOf(dnd.class, str);
    }

    public static dnd[] values() {
        return (dnd[]) f14453a.clone();
    }
}
