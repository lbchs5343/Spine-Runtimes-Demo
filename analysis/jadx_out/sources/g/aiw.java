package g;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final class aiw implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eso f10287a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10288b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Uri f10289c;

    public /* synthetic */ aiw(eso esoVar, Uri uri, int i) {
        this.f10288b = i;
        this.f10287a = esoVar;
        this.f10289c = uri;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        Context context7;
        Context context8;
        Context context9;
        switch (this.f10288b) {
            case 0:
                Uri uri = this.f10289c;
                eso esoVar = this.f10287a;
                if (i == 0) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(uri, baf.ak(uri.getPath(), "*/*"));
                    intent.setPackage(esoVar.getPackageName());
                    intent.addFlags(1);
                    fgj e2 = fgj.e();
                    context = esoVar.context;
                    if (!e2.g(context, intent, false, false, true)) {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setDataAndType(uri, baf.ak(uri.getPath(), "*/*"));
                        intent2.addFlags(1);
                        fgj e3 = fgj.e();
                        context2 = esoVar.context;
                        e3.f(context2, intent2);
                        break;
                    }
                } else if (i == 1) {
                    context3 = esoVar.context;
                    context4 = esoVar.context;
                    fso.ae(context3, "", baf.bo(context4, uri, false), true);
                    break;
                }
                break;
            default:
                Uri uri2 = this.f10289c;
                eso esoVar2 = this.f10287a;
                if (i == 0) {
                    Intent intent3 = new Intent("android.intent.action.VIEW");
                    intent3.setDataAndType(uri2, baf.ak(uri2.getPath(), "*/*"));
                    intent3.setPackage(esoVar2.getPackageName());
                    intent3.addFlags(1);
                    fgj e4 = fgj.e();
                    context5 = esoVar2.context;
                    if (!e4.g(context5, intent3, false, false, true)) {
                        Intent intent4 = new Intent("android.intent.action.VIEW");
                        intent4.setDataAndType(uri2, baf.ak(uri2.getPath(), "*/*"));
                        intent4.addFlags(1);
                        fgj e5 = fgj.e();
                        context6 = esoVar2.context;
                        e5.f(context6, intent4);
                        break;
                    }
                } else if (i == 1) {
                    Intent intent5 = new Intent("android.intent.action.SEND");
                    intent5.setType(baf.ak(uri2.getPath(), "text/plain"));
                    intent5.putExtra("android.intent.extra.STREAM", uri2);
                    intent5.addFlags(1);
                    fgj e6 = fgj.e();
                    context7 = esoVar2.context;
                    e6.f(context7, Intent.createChooser(intent5, esoVar2.getResources().getText(R.string.share)).addFlags(1));
                    break;
                } else if (i == 2) {
                    context8 = esoVar2.context;
                    context9 = esoVar2.context;
                    fso.ae(context8, "", baf.bo(context9, uri2, false), true);
                    break;
                }
                break;
        }
    }
}
