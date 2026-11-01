package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class yh {

    /* renamed from: a, reason: collision with root package name */
    public final cyg f20338a;

    public yh(bsz bszVar) {
        this.f20338a = bszVar.m;
    }

    public /* synthetic */ yh(cyg cygVar) {
        this.f20338a = cygVar;
    }

    public boolean b() {
        cyg cygVar = this.f20338a;
        try {
            ccb c2 = chk.c(cygVar.v);
            if (c2 != null) {
                return c2.c(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, "com.android.vending").versionCode >= 80837300;
            }
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.h("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e2) {
            bgm bgmVar2 = cygVar.z;
            cyg.ak(bgmVar2);
            bgmVar2.f11519c.i(e2, "Failed to retrieve Play Store version for Install Referrer");
            return false;
        }
    }
}
