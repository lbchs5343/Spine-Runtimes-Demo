package g;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class aih extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public int f10259a = -1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cuk f10260b;

    public aih(cuk cukVar) {
        this.f10260b = cukVar;
        c();
    }

    public final void c() {
        ftn ftnVar = this.f10260b.i;
        far farVar = ftnVar.k;
        if (farVar != null) {
            ftnVar.ao();
            ArrayList arrayList = ftnVar.s;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((far) arrayList.get(i)) == farVar) {
                    this.f10259a = i;
                    return;
                }
            }
        }
        this.f10259a = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final far getItem(int i) {
        cuk cukVar = this.f10260b;
        ftn ftnVar = cukVar.i;
        ftnVar.ao();
        ArrayList arrayList = ftnVar.s;
        cukVar.getClass();
        int i2 = this.f10259a;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (far) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        cuk cukVar = this.f10260b;
        ftn ftnVar = cukVar.i;
        ftnVar.ao();
        int size = ftnVar.s.size();
        cukVar.getClass();
        return this.f10259a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f10260b.m.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((ebq) view).p(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        c();
        super.notifyDataSetChanged();
    }
}
