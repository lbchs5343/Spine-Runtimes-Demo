package g;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Locale;

/* loaded from: classes.dex */
public final class euf implements atd, adi {

    /* renamed from: f, reason: collision with root package name */
    public int f16168f;

    /* renamed from: g, reason: collision with root package name */
    public int f16169g;
    public Uri h;
    public final /* synthetic */ int i = 0;
    public ClipData j;
    public Bundle k;

    public /* synthetic */ euf() {
    }

    public euf(euf eufVar) {
        ClipData clipData = eufVar.j;
        clipData.getClass();
        this.j = clipData;
        int i = eufVar.f16168f;
        if (i < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i > 5) {
            Locale locale2 = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
        }
        this.f16168f = i;
        int i2 = eufVar.f16169g;
        if ((i2 & 1) == i2) {
            this.f16169g = i2;
            this.h = eufVar.h;
            this.k = eufVar.k;
        } else {
            throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
        }
    }

    @Override // g.adi
    public int _cr() {
        return this.f16169g;
    }

    @Override // g.atd
    public void a(int i) {
        this.f16169g = i;
    }

    @Override // g.atd
    public dui build() {
        return new dui(new euf(this));
    }

    @Override // g.adi
    public ClipData c() {
        return this.j;
    }

    @Override // g.adi
    public ContentInfo d() {
        return null;
    }

    @Override // g.atd
    public void e(Uri uri) {
        this.h = uri;
    }

    @Override // g.adi
    public int getSource() {
        return this.f16168f;
    }

    @Override // g.atd
    public void setExtras(Bundle bundle) {
        this.k = bundle;
    }

    public String toString() {
        String str;
        switch (this.i) {
            case 1:
                Uri uri = this.h;
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(this.j.getDescription());
                sb.append(", source=");
                int i = this.f16168f;
                sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
                sb.append(", flags=");
                int i2 = this.f16169g;
                sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str);
                return awf.ad(sb, this.k != null ? ", hasExtras" : "", "}");
            default:
                return super.toString();
        }
    }
}
