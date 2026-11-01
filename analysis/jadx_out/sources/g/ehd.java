package g;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class ehd extends androidx.recyclerview.widget.m {

    /* renamed from: a, reason: collision with root package name */
    public final ebb f15538a;

    public ehd(ebb ebbVar) {
        this.f15538a = ebbVar;
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemCount() {
        return this.f15538a.j.getYearSpan();
    }

    @Override // androidx.recyclerview.widget.m
    public final void onBindViewHolder(androidx.recyclerview.widget.p pVar, int i) {
        dtt dttVar = (dtt) pVar;
        ebb ebbVar = this.f15538a;
        int i2 = ebbVar.j.getStart().year + i;
        dttVar.ak.setText(String.format(Locale.getDefault(), jp.NUMBER_FORMAT, Integer.valueOf(i2)));
        TextView textView = dttVar.ak;
        Context context = textView.getContext();
        textView.setContentDescription(fau.c().get(1) == i2 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i2)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i2)));
        akj akjVar = ebbVar.f15220g;
        if (fau.c().get(1) == i2) {
            Object obj = akjVar.f10384f;
        } else {
            Object obj2 = akjVar.h;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.m
    public final androidx.recyclerview.widget.p onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new dtt((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
