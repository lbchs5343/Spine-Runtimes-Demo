package g;

import android.content.DialogInterface;
import android.view.View;

/* loaded from: classes3.dex */
public final class fmd implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gqo f17026a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17027b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DialogInterface.OnClickListener f17028c;

    public /* synthetic */ fmd(gqo gqoVar, DialogInterface.OnClickListener onClickListener, int i) {
        this.f17027b = i;
        this.f17026a = gqoVar;
        this.f17028c = onClickListener;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f17027b) {
            case 0:
                gqo gqoVar = this.f17026a;
                DialogInterface.OnClickListener onClickListener = this.f17028c;
                if (onClickListener != null) {
                    onClickListener.onClick(gqoVar.getDialog(), -1);
                }
                gqoVar.getDialog().dismiss();
                break;
            case 1:
                gqo gqoVar2 = this.f17026a;
                DialogInterface.OnClickListener onClickListener2 = this.f17028c;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(gqoVar2.getDialog(), -3);
                }
                gqoVar2.getDialog().dismiss();
                break;
            default:
                gqo gqoVar3 = this.f17026a;
                DialogInterface.OnClickListener onClickListener3 = this.f17028c;
                if (onClickListener3 != null) {
                    onClickListener3.onClick(gqoVar3.getDialog(), -2);
                }
                gqoVar3.getDialog().dismiss();
                break;
        }
    }
}
