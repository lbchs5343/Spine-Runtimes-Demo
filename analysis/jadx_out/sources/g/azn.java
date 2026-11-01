package g;

import android.content.DialogInterface;
import android.os.Handler;

/* loaded from: classes.dex */
public final class azn implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f11126a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11127b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f11128c;

    public /* synthetic */ azn(Object obj, int i, boolean z) {
        this.f11127b = i;
        this.f11126a = obj;
        this.f11128c = z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f11127b;
        boolean z = this.f11128c;
        Object obj = this.f11126a;
        switch (i2) {
            case 0:
                anh anhVar = (anh) obj;
                if (!z) {
                    if (i == 0) {
                        eas easVar = (eas) anhVar.f10515a;
                        int i3 = eas.h;
                        Handler handler = easVar.i;
                        handler.sendMessage(handler.obtainMessage(1, (auj) anhVar.f10517c));
                        break;
                    } else if (i == 1) {
                        eas easVar2 = (eas) anhVar.f10515a;
                        int i4 = eas.h;
                        Handler handler2 = easVar2.i;
                        handler2.sendMessage(handler2.obtainMessage(6, (auj) anhVar.f10517c));
                        break;
                    }
                } else if (i == 0) {
                    eas easVar3 = (eas) anhVar.f10515a;
                    int i5 = eas.h;
                    Handler handler3 = easVar3.i;
                    handler3.sendMessage(handler3.obtainMessage(7, (auj) anhVar.f10517c));
                    break;
                } else if (i == 1) {
                    eas easVar4 = (eas) anhVar.f10515a;
                    int i6 = eas.h;
                    Handler handler4 = easVar4.i;
                    handler4.sendMessage(handler4.obtainMessage(1, (auj) anhVar.f10517c));
                    break;
                } else if (i == 2) {
                    eas easVar5 = (eas) anhVar.f10515a;
                    int i7 = eas.h;
                    Handler handler5 = easVar5.i;
                    handler5.sendMessage(handler5.obtainMessage(6, (auj) anhVar.f10517c));
                    break;
                }
                break;
            default:
                int i8 = c.e.b.f391d;
                ((c.e.b) obj).q(z);
                break;
        }
    }
}
