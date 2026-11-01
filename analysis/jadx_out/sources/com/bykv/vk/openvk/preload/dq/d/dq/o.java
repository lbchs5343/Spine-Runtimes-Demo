package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.cd;
import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public final class o extends r<Date> {
    public static final i dq = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.o.1
        @Override // com.bykv.vk.openvk.preload.dq.i
        public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
            if (dqVar.dq == Date.class) {
                return new o();
            }
            return null;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private final DateFormat f598d = new SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.dq.r
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public synchronized Date dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
            dqVar.no();
            return null;
        }
        try {
            return new Date(this.f598d.parse(dqVar.kk()).getTime());
        } catch (ParseException e2) {
            throw new cd(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.dq.r
    public synchronized void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Date date) throws IOException {
        oxVar.d(date == null ? null : this.f598d.format((java.util.Date) date));
    }
}
