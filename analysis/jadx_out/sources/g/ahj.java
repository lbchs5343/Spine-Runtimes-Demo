package g;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final class ahj extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public static final int f10223a = fau.d(null).getMaximum(4);

    /* renamed from: b, reason: collision with root package name */
    public static final int f10224b = (fau.d(null).getMaximum(7) + fau.d(null).getMaximum(5)) - 1;

    /* renamed from: c, reason: collision with root package name */
    public final edj f10225c;

    /* renamed from: d, reason: collision with root package name */
    public akj f10226d;

    /* renamed from: e, reason: collision with root package name */
    public final fin f10227e;

    public ahj(edj edjVar, fin finVar, cyy cyyVar) {
        this.f10225c = edjVar;
        this.f10227e = finVar;
        throw null;
    }

    public final int f() {
        return this.f10225c.daysFromStartOfWeekToFirstOfMonth(this.f10227e.getFirstDayOfWeek());
    }

    @Override // android.widget.Adapter
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i) {
        if (i < f() || i > h()) {
            return null;
        }
        return Long.valueOf(this.f10225c.getDay((i - f()) + 1));
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f10224b;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i / this.f10225c.daysInWeek;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f10226d == null) {
            this.f10226d = new akj(context, 5);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int f2 = i - f();
        if (f2 >= 0) {
            edj edjVar = this.f10225c;
            if (f2 < edjVar.daysInMonth) {
                textView.setTag(edjVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, jp.NUMBER_FORMAT, Integer.valueOf(f2 + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
                if (getItem(i) == null || textView == null) {
                    return textView;
                }
                textView.getContext();
                fau.c().getTimeInMillis();
                throw null;
            }
        }
        textView.setVisibility(8);
        textView.setEnabled(false);
        if (getItem(i) == null) {
            textView.getContext();
            fau.c().getTimeInMillis();
            throw null;
        }
        return textView;
    }

    public final int h() {
        return (f() + this.f10225c.daysInMonth) - 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
