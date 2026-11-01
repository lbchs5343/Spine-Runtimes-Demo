package com.ss.android.download.api.dq;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.widget.Toast;
import com.ss.android.download.api.config.ig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.d;

/* loaded from: classes.dex */
public class dq implements ig {
    private static Dialog dq(final com.ss.android.download.api.model.d dVar) {
        if (dVar == null) {
            return null;
        }
        AlertDialog show = new AlertDialog.Builder(dVar.dq).setTitle(dVar.f9109d).setMessage(dVar.ox).setPositiveButton(dVar.p, new DialogInterface.OnClickListener() { // from class: com.ss.android.download.api.dq.dq.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                d.InterfaceC0211d interfaceC0211d = com.ss.android.download.api.model.d.this.ia;
                if (interfaceC0211d != null) {
                    interfaceC0211d.dq(dialogInterface);
                }
            }
        }).setNegativeButton(dVar.s, new DialogInterface.OnClickListener() { // from class: com.ss.android.download.api.dq.dq.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                d.InterfaceC0211d interfaceC0211d = com.ss.android.download.api.model.d.this.ia;
                if (interfaceC0211d != null) {
                    interfaceC0211d.d(dialogInterface);
                }
            }
        }).show();
        show.setCanceledOnTouchOutside(dVar.iw);
        show.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.ss.android.download.api.dq.dq.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                d.InterfaceC0211d interfaceC0211d = com.ss.android.download.api.model.d.this.ia;
                if (interfaceC0211d != null) {
                    interfaceC0211d.ox(dialogInterface);
                }
            }
        });
        Drawable drawable = dVar.mn;
        if (drawable != null) {
            show.setIcon(drawable);
        }
        return show;
    }

    @Override // com.ss.android.download.api.config.ig
    public Dialog d(com.ss.android.download.api.model.d dVar) {
        return dq(dVar);
    }

    @Override // com.ss.android.download.api.config.ig
    public void dq(int i, Context context, DownloadModel downloadModel, String str, Drawable drawable, int i2) {
        Toast.makeText(context, str, 0).show();
    }
}
