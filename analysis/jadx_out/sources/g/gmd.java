package g;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class gmd implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bgn f18388a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ die f18389b;

    public gmd(die dieVar, bgn bgnVar) {
        this.f18389b = dieVar;
        this.f18388a = bgnVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        die dieVar = this.f18389b;
        DialogInterface.OnClickListener onClickListener = dieVar.y;
        bgn bgnVar = this.f18388a;
        onClickListener.onClick(bgnVar.x, i);
        if (dieVar.l) {
            return;
        }
        bgnVar.x.dismiss();
    }
}
