package g;

import a.v.ColorPickerView;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import cn.trinea.android.developertools.R;
import java.util.List;

/* loaded from: classes.dex */
public final class ef extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public aoi f15412a;

    /* renamed from: b, reason: collision with root package name */
    public Context f15413b;

    /* renamed from: c, reason: collision with root package name */
    public List f15414c;

    /* renamed from: d, reason: collision with root package name */
    public int f15415d;

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f15414c.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f15414c.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(final int i, View view, ViewGroup viewGroup) {
        fjl fjlVar;
        Context context = this.f15413b;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(R.layout.item_color_grid, viewGroup, false);
            fjlVar = new fjl();
            fjlVar.f16891a = (ImageView) view.findViewById(R.id.color_view);
            fjlVar.f16892b = (ImageView) view.findViewById(R.id.selected_indicator);
            view.setTag(fjlVar);
        } else {
            fjlVar = (fjl) view.getTag();
        }
        final avv avvVar = (avv) this.f15414c.get(i);
        ColorPickerView.updateColorPreview(fjlVar.f16891a, context, avvVar.getColor());
        fjlVar.f16892b.setVisibility(this.f15415d != i ? 8 : 0);
        view.setOnClickListener(new View.OnClickListener() { // from class: g.fhx
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                aoi aoiVar = ef.this.f15412a;
                if (aoiVar != null) {
                    ((ColorPickerView) aoiVar.f10570b).lambda$initData$0(avvVar, i);
                }
            }
        });
        return view;
    }
}
