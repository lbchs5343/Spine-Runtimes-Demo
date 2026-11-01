package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gt implements axb {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gt[] f18709a;

    /* renamed from: d, reason: collision with root package name */
    public static final gt f18710d;
    public static final gt dq;
    public static final gt ia;
    public static final gt iw;
    public static final gt kk;
    public static final gt mn;
    public static final gt no;
    public static final gt o;
    public static final gt ox;
    public static final gt p;
    public static final gt s;

    static {
        gt gtVar = new gt("OPERATOR_RESULT", 0);
        dq = gtVar;
        gt gtVar2 = new gt("BRACKET", 1);
        f18710d = gtVar2;
        gt gtVar3 = new gt("VARIABLE", 2);
        ox = gtVar3;
        gt gtVar4 = new gt("PROPERTY", 3);
        p = gtVar4;
        gt gtVar5 = new gt("METHOD", 4);
        s = gtVar5;
        gt gtVar6 = new gt("STRING", 5);
        iw = gtVar6;
        gt gtVar7 = new gt("NUMBER", 6);
        mn = gtVar7;
        gt gtVar8 = new gt("TYPE", 7);
        ia = gtVar8;
        gt gtVar9 = new gt("TYPE_ENUM", 8);
        kk = gtVar9;
        gt gtVar10 = new gt("ENUM", 9);
        o = gtVar10;
        gt gtVar11 = new gt("CONSTANT", 10);
        no = gtVar11;
        f18709a = new gt[]{gtVar, gtVar2, gtVar3, gtVar4, gtVar5, gtVar6, gtVar7, gtVar8, gtVar9, gtVar10, gtVar11};
    }

    public static gt valueOf(String str) {
        return (gt) Enum.valueOf(gt.class, str);
    }

    public static gt[] values() {
        return (gt[]) f18709a.clone();
    }
}
