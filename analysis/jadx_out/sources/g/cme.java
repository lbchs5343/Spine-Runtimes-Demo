package g;

import android.util.SparseArray;

/* loaded from: classes3.dex */
public enum cme {
    UNKNOWN_MOBILE_SUBTYPE(0),
    GPRS(1),
    EDGE(2),
    UMTS(3),
    CDMA(4),
    EVDO_0(5),
    EVDO_A(6),
    RTT(7),
    HSDPA(8),
    HSUPA(9),
    HSPA(10),
    IDEN(11),
    EVDO_B(12),
    LTE(13),
    EHRPD(14),
    HSPAP(15),
    GSM(16),
    TD_SCDMA(17),
    IWLAN(18),
    LTE_CA(19),
    COMBINED(100);


    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f13106a;
    private final int value;

    static {
        cme cmeVar = UNKNOWN_MOBILE_SUBTYPE;
        cme cmeVar2 = GPRS;
        cme cmeVar3 = EDGE;
        cme cmeVar4 = UMTS;
        cme cmeVar5 = CDMA;
        cme cmeVar6 = EVDO_0;
        cme cmeVar7 = EVDO_A;
        cme cmeVar8 = RTT;
        cme cmeVar9 = HSDPA;
        cme cmeVar10 = HSUPA;
        cme cmeVar11 = HSPA;
        cme cmeVar12 = IDEN;
        cme cmeVar13 = EVDO_B;
        cme cmeVar14 = LTE;
        cme cmeVar15 = EHRPD;
        cme cmeVar16 = HSPAP;
        cme cmeVar17 = GSM;
        cme cmeVar18 = TD_SCDMA;
        cme cmeVar19 = IWLAN;
        cme cmeVar20 = LTE_CA;
        SparseArray sparseArray = new SparseArray();
        f13106a = sparseArray;
        sparseArray.put(0, cmeVar);
        sparseArray.put(1, cmeVar2);
        sparseArray.put(2, cmeVar3);
        sparseArray.put(3, cmeVar4);
        sparseArray.put(4, cmeVar5);
        sparseArray.put(5, cmeVar6);
        sparseArray.put(6, cmeVar7);
        sparseArray.put(7, cmeVar8);
        sparseArray.put(8, cmeVar9);
        sparseArray.put(9, cmeVar10);
        sparseArray.put(10, cmeVar11);
        sparseArray.put(11, cmeVar12);
        sparseArray.put(12, cmeVar13);
        sparseArray.put(13, cmeVar14);
        sparseArray.put(14, cmeVar15);
        sparseArray.put(15, cmeVar16);
        sparseArray.put(16, cmeVar17);
        sparseArray.put(17, cmeVar18);
        sparseArray.put(18, cmeVar19);
        sparseArray.put(19, cmeVar20);
    }

    cme(int i) {
        this.value = i;
    }

    public final int c() {
        return this.value;
    }
}
