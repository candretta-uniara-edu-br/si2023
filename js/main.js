$(function () {
    $(".panel, .hero h1, .hero .lead, .hero .actions").addClass("reveal-on-load");

    window.requestAnimationFrame(function () {
        $(".reveal-on-load").each(function (index) {
            var element = $(this);
            window.setTimeout(function () {
                element.addClass("is-visible");
            }, index * 80);
        });
    });

    updateStudentCount();
});

function updateStudentCount() {
    var totalElement = $("#total-alunos");
    var totalStudents = $("#lista-alunos .student-card").length;

    if (!totalElement.length) {
        return;
    }

    if (!totalStudents) {
        totalElement.text("0 alunos");
        return;
    }

    totalElement.text(totalStudents + (totalStudents === 1 ? " aluno" : " alunos"));
}