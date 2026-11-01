package g;

import a.v.ScrollViewWithMaxHeight;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class eah extends cqo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f15180a;

    /* renamed from: b, reason: collision with root package name */
    public fei f15181b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f15182c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f15183d;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f15181b.b()) {
            int id = view.getId();
            if (id == this.f15182c.getId()) {
                Context context = this.f15180a;
                gm.j(context, R.string.copy_pay_success, "TimeMeasurer", context.getString(R.string.wechat), 1);
                fso.ae(this.f15180a, getString(R.string.app_name), "TimeMeasurer", false);
                dismissAllowingStateLoss();
                return;
            }
            if (id == this.f15183d.getId()) {
                Context context2 = this.f15180a;
                gm.j(context2, R.string.copy_pay_success, "trinea.cn@gmail.com", context2.getString(R.string.alipay), 1);
                fso.ae(this.f15180a, getString(R.string.app_name), "trinea.cn@gmail.com", false);
                dismissAllowingStateLoss();
            }
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return ckd.o(getActivity());
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.cloneInContext(getDialog().getContext()).inflate(R.layout.dialog_china_not_alipay, viewGroup, false);
    }

    @Override // g.cqo, android.app.DialogFragment, android.app.Fragment
    public final void onStart() {
        super.onStart();
        if (getDialog() != null) {
            ckd.al(getDialog());
        }
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        double d2;
        double d3;
        super.onViewCreated(view, bundle);
        this.f15180a = view.getContext();
        TextView textView = (TextView) view.findViewById(R.id.copy_wechat);
        this.f15182c = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) view.findViewById(R.id.copy_alipay);
        this.f15183d = textView2;
        textView2.setOnClickListener(this);
        TextView textView3 = (TextView) view.findViewById(R.id.desc);
        textView3.setMovementMethod(LinkMovementMethod.getInstance());
        textView3.setText(Html.fromHtml(getString(R.string.china_not_alipay_tips)));
        ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) view.findViewById(R.id.desc_layout);
        int[] ag = fso.ag(this.f15180a);
        int i = ag[0];
        int i2 = ag[1];
        if (i > i2) {
            d2 = i2;
            d3 = 2.5d;
        } else {
            d2 = i2;
            d3 = 4.5d;
        }
        scrollViewWithMaxHeight.setMaxHeight((int) ((d2 * d3) / 9.0d));
        scrollViewWithMaxHeight.setVerticalScrollBarEnabled(true);
        this.f15181b = new fei();
    }
}
