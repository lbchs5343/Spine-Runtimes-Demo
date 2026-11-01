package g;

import android.webkit.WebView;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class dgu implements WebView.FindListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fyx f14150a;

    public dgu(fyx fyxVar) {
        this.f14150a = fyxVar;
    }

    @Override // android.webkit.WebView.FindListener
    public final void onFindResultReceived(int i, int i2, boolean z) {
        TextView textView;
        if (z) {
            int i3 = i2 > 0 ? i + 1 : 0;
            textView = this.f14150a.matchResultTV;
            textView.setText(i3 + " / " + i2);
        }
    }
}
