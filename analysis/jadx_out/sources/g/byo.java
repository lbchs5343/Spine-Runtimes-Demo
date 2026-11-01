package g;

import android.util.SparseArray;

/* loaded from: classes3.dex */
public enum byo {
    MOBILE(0),
    WIFI(1),
    MOBILE_MMS(2),
    MOBILE_SUPL(3),
    MOBILE_DUN(4),
    MOBILE_HIPRI(5),
    WIMAX(6),
    BLUETOOTH(7),
    DUMMY(8),
    ETHERNET(9),
    MOBILE_FOTA(10),
    MOBILE_IMS(11),
    MOBILE_CBS(12),
    WIFI_P2P(13),
    MOBILE_IA(14),
    MOBILE_EMERGENCY(15),
    PROXY(16),
    VPN(17),
    NONE(-1);


    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f12459a;
    private final int value;

    static {
        byo byoVar = MOBILE;
        byo byoVar2 = WIFI;
        byo byoVar3 = MOBILE_MMS;
        byo byoVar4 = MOBILE_SUPL;
        byo byoVar5 = MOBILE_DUN;
        byo byoVar6 = MOBILE_HIPRI;
        byo byoVar7 = WIMAX;
        byo byoVar8 = BLUETOOTH;
        byo byoVar9 = DUMMY;
        byo byoVar10 = ETHERNET;
        byo byoVar11 = MOBILE_FOTA;
        byo byoVar12 = MOBILE_IMS;
        byo byoVar13 = MOBILE_CBS;
        byo byoVar14 = WIFI_P2P;
        byo byoVar15 = MOBILE_IA;
        byo byoVar16 = MOBILE_EMERGENCY;
        byo byoVar17 = PROXY;
        byo byoVar18 = VPN;
        byo byoVar19 = NONE;
        SparseArray sparseArray = new SparseArray();
        f12459a = sparseArray;
        sparseArray.put(0, byoVar);
        sparseArray.put(1, byoVar2);
        sparseArray.put(2, byoVar3);
        sparseArray.put(3, byoVar4);
        sparseArray.put(4, byoVar5);
        sparseArray.put(5, byoVar6);
        sparseArray.put(6, byoVar7);
        sparseArray.put(7, byoVar8);
        sparseArray.put(8, byoVar9);
        sparseArray.put(9, byoVar10);
        sparseArray.put(10, byoVar11);
        sparseArray.put(11, byoVar12);
        sparseArray.put(12, byoVar13);
        sparseArray.put(13, byoVar14);
        sparseArray.put(14, byoVar15);
        sparseArray.put(15, byoVar16);
        sparseArray.put(16, byoVar17);
        sparseArray.put(17, byoVar18);
        sparseArray.put(-1, byoVar19);
    }

    byo(int i) {
        this.value = i;
    }

    public final int c() {
        return this.value;
    }
}
