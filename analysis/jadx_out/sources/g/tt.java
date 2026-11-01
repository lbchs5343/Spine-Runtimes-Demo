package g;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import com.google.android.gms.internal.ads.zzop;
import com.google.android.gms.internal.ads.zzov;

/* loaded from: classes3.dex */
public final class tt extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f20064a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f20065b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzov f20066c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tt(zzov zzovVar, Handler handler, ContentResolver contentResolver, Uri uri) {
        super(handler);
        this.f20066c = zzovVar;
        this.f20064a = contentResolver;
        this.f20065b = uri;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzov zzovVar = this.f20066c;
        zzovVar.k(zzop.e(zzovVar.f8831d, zzovVar.f8828a, zzovVar.j));
    }
}
