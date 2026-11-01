package g;

import com.google.android.gms.internal.ads.zzaqu;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ahu extends zzaqu {
    public final /* synthetic */ Map w;
    public final /* synthetic */ byte[] x;
    public final /* synthetic */ dzz y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ahu(int i, String str, dlc dlcVar, ffr ffrVar, byte[] bArr, Map map, dzz dzzVar) {
        super(i, str, dlcVar, ffrVar);
        this.x = bArr;
        this.w = map;
        this.y = dzzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqu, com.google.android.gms.internal.ads.zzapp
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final void q(String str) {
        if (dzz.g() && str != null) {
            this.y.h("onNetworkResponseBody", new fnq(29, str.getBytes()));
        }
        super.q(str);
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final Map zzl() {
        Map map = this.w;
        return map == null ? Collections.EMPTY_MAP : map;
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final byte[] zzx() {
        byte[] bArr = this.x;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }
}
