package g;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzevy;

/* loaded from: classes3.dex */
public final class ftw implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f17412a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17413b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f17414c;

    public /* synthetic */ ftw(String str, String str2, Bundle bundle) {
        this.f17412a = str;
        this.f17413b = str2;
        this.f17414c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("consent_string", this.f17412a);
        bundle.putString("fc_consent", this.f17413b);
        bundle.putBundle("iab_consent_info", this.f17414c);
    }
}
