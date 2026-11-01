package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public enum bpd {
    RESPONSE_CODE_UNSPECIFIED(-999),
    SERVICE_TIMEOUT(-3),
    FEATURE_NOT_SUPPORTED(-2),
    SERVICE_DISCONNECTED(-1),
    OK(0),
    USER_CANCELED(1),
    SERVICE_UNAVAILABLE(2),
    BILLING_UNAVAILABLE(3),
    ITEM_UNAVAILABLE(4),
    DEVELOPER_ERROR(5),
    ERROR(6),
    ITEM_ALREADY_OWNED(7),
    ITEM_NOT_OWNED(8),
    EXPIRED_OFFER_TOKEN(11),
    NETWORK_ERROR(12);


    /* renamed from: a, reason: collision with root package name */
    public static final cil f11949a;
    private final int zzr;

    static {
        dsg dsgVar = new dsg();
        dsgVar.f14704a = new Object[8];
        dsgVar.f14707d = 0;
        for (bpd bpdVar : values()) {
            Integer valueOf = Integer.valueOf(bpdVar.zzr);
            int i = dsgVar.f14707d + 1;
            Object[] objArr = (Object[]) dsgVar.f14704a;
            int length = objArr.length;
            int i2 = i + i;
            if (i2 > length) {
                if (i2 > length) {
                    length = length + (length >> 1) + 1;
                    if (length < i2) {
                        int highestOneBit = Integer.highestOneBit(i2 - 1);
                        length = highestOneBit + highestOneBit;
                    }
                    if (length < 0) {
                        length = he.UNDEFINED_ITEM_ID;
                    }
                }
                dsgVar.f14704a = Arrays.copyOf(objArr, length);
            }
            Object[] objArr2 = (Object[]) dsgVar.f14704a;
            int i3 = dsgVar.f14707d;
            int i4 = i3 + i3;
            objArr2[i4] = valueOf;
            objArr2[i4 + 1] = bpdVar;
            dsgVar.f14707d = i3 + 1;
        }
        bhd bhdVar = (bhd) dsgVar.f14705b;
        if (bhdVar != null) {
            throw bhdVar.d();
        }
        cil h = cil.h(dsgVar.f14707d, (Object[]) dsgVar.f14704a, dsgVar);
        bhd bhdVar2 = (bhd) dsgVar.f14705b;
        if (bhdVar2 != null) {
            throw bhdVar2.d();
        }
        f11949a = h;
    }

    bpd(int i) {
        this.zzr = i;
    }
}
