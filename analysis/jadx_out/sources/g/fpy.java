package g;

import android.content.Context;
import android.text.TextUtils;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class fpy {

    /* renamed from: a, reason: collision with root package name */
    public final String f17216a;

    /* renamed from: b, reason: collision with root package name */
    public final String f17217b;

    /* renamed from: c, reason: collision with root package name */
    public final String f17218c;

    /* renamed from: d, reason: collision with root package name */
    public final String f17219d;

    /* renamed from: e, reason: collision with root package name */
    public final String f17220e;

    /* renamed from: f, reason: collision with root package name */
    public final String f17221f;

    /* renamed from: g, reason: collision with root package name */
    public final String f17222g;

    public fpy(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i = gje.f18241a;
        ckd.an("ApplicationId must be set.", true ^ (str == null || str.trim().isEmpty()));
        this.f17220e = str;
        this.f17218c = str2;
        this.f17221f = str3;
        this.f17216a = str4;
        this.f17217b = str5;
        this.f17219d = str6;
        this.f17222g = str7;
    }

    public static fpy h(Context context) {
        akj akjVar = new akj(context, 14);
        String af = akjVar.af("google_app_id");
        if (TextUtils.isEmpty(af)) {
            return null;
        }
        return new fpy(af, akjVar.af("google_api_key"), akjVar.af("firebase_database_url"), akjVar.af("ga_trackingId"), akjVar.af("gcm_defaultSenderId"), akjVar.af("google_storage_bucket"), akjVar.af("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fpy)) {
            return false;
        }
        fpy fpyVar = (fpy) obj;
        return ffb.w(this.f17220e, fpyVar.f17220e) && ffb.w(this.f17218c, fpyVar.f17218c) && ffb.w(this.f17221f, fpyVar.f17221f) && ffb.w(this.f17216a, fpyVar.f17216a) && ffb.w(this.f17217b, fpyVar.f17217b) && ffb.w(this.f17219d, fpyVar.f17219d) && ffb.w(this.f17222g, fpyVar.f17222g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17220e, this.f17218c, this.f17221f, this.f17216a, this.f17217b, this.f17219d, this.f17222g});
    }

    public final String toString() {
        ffr ffrVar = new ffr(this);
        ffrVar.x(this.f17220e, "applicationId");
        ffrVar.x(this.f17218c, "apiKey");
        ffrVar.x(this.f17221f, "databaseUrl");
        ffrVar.x(this.f17217b, "gcmSenderId");
        ffrVar.x(this.f17219d, "storageBucket");
        ffrVar.x(this.f17222g, "projectId");
        return ffrVar.toString();
    }
}
