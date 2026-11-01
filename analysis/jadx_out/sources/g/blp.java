package g;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* loaded from: classes.dex */
public final class blp implements cdx {

    /* renamed from: a, reason: collision with root package name */
    public final InputContentInfo f11795a;

    public blp(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f11795a = new InputContentInfo(uri, clipDescription, uri2);
    }

    public blp(Object obj) {
        this.f11795a = (InputContentInfo) obj;
    }

    @Override // g.cdx
    public final Object b() {
        return this.f11795a;
    }

    @Override // g.cdx
    public final Uri c() {
        return this.f11795a.getContentUri();
    }

    @Override // g.cdx
    public final void d() {
        this.f11795a.requestPermission();
    }

    @Override // g.cdx
    public final Uri e() {
        return this.f11795a.getLinkUri();
    }

    @Override // g.cdx
    public final ClipDescription getDescription() {
        return this.f11795a.getDescription();
    }
}
