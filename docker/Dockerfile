FROM centos:7

# ROOTにパスワードをセット
#RUN echo 'root:newpassword' |chpasswd

# インストール済みのパッケージをアップデート＆キャッシュのクリア
RUN yum -y update && yum clean all

#ARG UID=991
#ARG UNAME=demo
#ARG GID=991
#ARG GNAME=demo

# ユーザーの追加
#RUN groupadd ${GNAME} --gid ${GID}
#RUN adduser ${UNAME} --gid ${GID} --uid ${UID}
#RUN echo "${UNAME}    ALL=(ALL)       ALL" >> /etc/sudoers

#USER ${UNAME}

CMD ["/usr/sbin/init"]