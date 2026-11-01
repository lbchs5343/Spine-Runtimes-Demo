package g;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class yq implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20361a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f20362b;

    public /* synthetic */ yq(int i, Object obj) {
        this.f20361a = i;
        this.f20362b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        CharSequence convertSelectionToString;
        switch (this.f20361a) {
            case 0:
                cox coxVar = (cox) this.f20362b;
                erv ervVar = coxVar.at;
                ervVar.setSelection(i);
                if (ervVar.getOnItemClickListener() != null) {
                    ervVar.performItemClick(view, i, coxVar.as.getItemId(i));
                }
                coxVar.dismiss();
                break;
            default:
                faa faaVar = (faa) this.f20362b;
                cfi cfiVar = faaVar.j;
                convertSelectionToString = faaVar.convertSelectionToString(i < 0 ? !cfiVar.ag.isShowing() ? null : cfiVar.x.getSelectedItem() : faaVar.getAdapter().getItem(i));
                faaVar.setText(convertSelectionToString, false);
                AdapterView.OnItemClickListener onItemClickListener = faaVar.getOnItemClickListener();
                if (onItemClickListener != null) {
                    if (view == null || i < 0) {
                        view = !cfiVar.ag.isShowing() ? null : cfiVar.x.getSelectedView();
                        i = !cfiVar.ag.isShowing() ? -1 : cfiVar.x.getSelectedItemPosition();
                        j = !cfiVar.ag.isShowing() ? Long.MIN_VALUE : cfiVar.x.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(cfiVar.x, view, i, j);
                }
                cfiVar.dismiss();
                break;
        }
    }
}
