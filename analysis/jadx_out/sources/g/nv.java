package g;

import android.R;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* loaded from: classes.dex */
public final class nv extends ArrayAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f19734a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ die f19735b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nv(die dieVar, ContextThemeWrapper contextThemeWrapper, int i, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(contextThemeWrapper, i, R.id.text1, charSequenceArr);
        this.f19735b = dieVar;
        this.f19734a = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        boolean[] zArr = this.f19735b.j;
        if (zArr != null && zArr[i]) {
            this.f19734a.setItemChecked(i, true);
        }
        return view2;
    }
}
