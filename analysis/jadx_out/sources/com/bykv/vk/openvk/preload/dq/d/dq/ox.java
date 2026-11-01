package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.cd;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ox extends r<Date> {
    public static final i dq = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.ox.1
        @Override // com.bykv.vk.openvk.preload.dq.i
        public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
            if (dqVar.dq == Date.class) {
                return new ox();
            }
            return null;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private final List<DateFormat> f599d;

    public ox() {
        ArrayList arrayList = new ArrayList();
        this.f599d = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (com.bykv.vk.openvk.preload.dq.d.s.d()) {
            arrayList.add(com.bykv.vk.openvk.preload.dq.d.o.dq(2, 2));
        }
    }

    private synchronized Date dq(String str) {
        Iterator<DateFormat> it = this.f599d.iterator();
        while (it.hasNext()) {
            try {
                return it.next().parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return com.bykv.vk.openvk.preload.dq.d.dq.dq.dq.dq(str, new ParsePosition(0));
        } catch (ParseException e2) {
            throw new cd(str, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.dq.r
    public synchronized void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Date date) throws IOException {
        if (date == null) {
            oxVar.s();
        } else {
            oxVar.d(this.f599d.get(0).format(date));
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final /* synthetic */ Date dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        if (dqVar.iw() != com.bykv.vk.openvk.preload.dq.p.d.NULL) {
            return dq(dqVar.kk());
        }
        dqVar.no();
        return null;
    }
}
