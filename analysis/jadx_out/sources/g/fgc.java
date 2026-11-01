package g;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class fgc implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cfi f16737a;

    public fgc(cfi cfiVar) {
        this.f16737a = cfiVar;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        bgv bgvVar;
        if (i == -1 || (bgvVar = this.f16737a.x) == null) {
            return;
        }
        bgvVar.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
