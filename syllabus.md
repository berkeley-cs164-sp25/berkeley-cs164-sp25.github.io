---
layout: page
title: Syllabus
description: >-
    Course policies and information.
nav_order: 10
---

# Syllabus
{: .no_toc }

Have you ever wondered why C programs seem to run faster than Python
programs? Have you ever been confused by an error message and wondered
why Java couldn't understand your program? In CS 164, we'll learn how
compilers take in code in one language and produce code in another; in
particular, we'll learn how to translate high-level languages into code
that your computer's processor can understand. We'll get hands-on
practice developing compilers for a series of increasingly complex
languages. Along the way, we'll learn some general best practices for
developing and testing complex software systems.


---

## Table of Contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Learning Objectives {#Learning_Objectives}

After completing this course, students will be able to:

-   Develop programs to translate between different programming
    languages
-   More broadly, develop programs that operate on programs
-   Explain the relationship between compilers and interpreters, and the
    differences between them
-   Understand the tools they use to run programs---and the errors those
    tools produce
-   Assign meaning to high-level language constructs
-   Implement high-level language constructs
-   Reason about what it means for a compiler to be correct
-   Reason about undefined behavior
-   Read and write assembly language
-   Write a parser

## Course Culture {#Course_Culture}

Students taking CS 164 come from a wide range of backgrounds. We hope to
foster an inclusive and safe learning environment based on curiosity
rather than competition. All members of the course community---the
instructor, students, and GSIs---are expected to treat each other with
courtesy and respect. Some of the responsibility for that lies with the
staff, but a lot of it ultimately rests with you, the students.

### Be Aware of Your Actions {#Be_Aware}

Sometimes, the little things add up to creating an unwelcoming culture
to some students. For example, you and a friend may think you are
sharing in a private joke about other races, genders, or cultures, but
this can have adverse effects on classmates who overhear it. There is a
great deal of research on something called "stereotype threat," which
finds simply reminding someone that they belong to a particular culture
or share a particular identity (on whatever dimension) can interfere
with their course performance.

Stereotype threat works both ways: you can assume that a student will
struggle based on who they appear to be, or you can assume that a
student is doing great based on who they appear to be. Both are
potentially harmful.

Bear in mind that diversity has many facets, some of which are not
visible. Your classmates may have medical conditions (physical or
mental), personal situations (financial, family, etc.), or interests
that aren't common to most students in the course. Another aspect of
professionalism is avoiding comments that (likely unintentionally) put
down colleagues for situations they cannot control. Bragging in open
space that an assignment is easy or "crazy," for example, can send
subtle cues that discourage classmates who are dealing with issues that
you can't see. Please take care, so we can create a class in which all
students feel supported and respected.

### Be an Adult {#Be_an_Adult}

Beyond the slips that many of us make unintentionally are a host of
behaviors that the course staff, department, and university do not
tolerate. These are generally classified under the term harassment;
sexual harassment is a specific form that is governed by federal laws
known as Title IX.

UC Berkeley's Title IX website provides many resources for understanding
the terms, procedures, and policies around harassment. Make sure you are
aware enough of these issues to avoid crossing a line in your
interactions with other students. For example, repeatedly asking another
student out on a date after they have said no can cross this line.

Your reaction to this topic might be to laugh it off, or to make or
think snide remarks about "political correctness" or jokes about consent
or other things. You might think people just need to grow a thicker skin
or learn to take a joke. This isn't your decision to make. Research
shows the consequences (emotional as well as physical) on people who
experience harassment. When your behavior forces another student to
focus on something other than their education, you have crossed a line.
You have no right to take someone else's education away from them.

This issue is very important to CS164's course staff. Therefore, if we
cannot appeal to your decency and collegiality, let us at least appeal
to your self-interest. Do not mess around on this matter. It will not go
well for you.

### Issues with Course Staff {#Issues_with_Course_Staff}

Professionalism and respect for diversity are not just matters between
students; they also apply to how the course staff treat the students.
The staff of this course will treat you in a way that respects our
differences. However, despite our best efforts, we might slip up,
hopefully inadvertently. If you are concerned about classroom
environment issues created by the staff or overall class dynamic, please
feel free to talk to us about it. The instructor and the head GSI in
particular welcome any comments or concerns regarding conduct of the
course and the staff.

We are committed to creating a learning environment welcoming of all
students that supports a diversity of thoughts, perspectives and
experiences and respects your identities and backgrounds (including
race, ethnicity, nationality, gender identity, socioeconomic class,
sexual orientation, language, religion, ability, and more.) To help
accomplish this:

-   If your name and/or pronouns differ from those that appear in your
    official records, please let us know.
-   If you feel like your performance in the class is being affected by
    your experiences outside of class (e.g., family matters, current
    events), please don't hesitate to come and talk with us. We want to
    be resources for you.
-   We (like many people) are still in the process of learning about
    diverse perspectives and identities. If something was said in class
    (by anyone) that made you feel uncomfortable, please talk to us
    about it. Sometimes, you may not be comfortable bringing this up
    directly to us. If so, you are welcome to talk to the department's
    Faculty Equity Advisor Prof. Fox
    ([fox@berkeley.edu](mailto://fox@berkeley.edu)). There's also a
    great set of resources available at
    <https://eecs.berkeley.edu/resources/students/grievances> ,
    including the [EECS Student Incident Reporting
    Form](https://eecs.berkeley.edu/resources/students/grievances#eecs-climate)
    . And if there are other resources you think we should list here,
    let us know!

**We will take all complaints about unprofessional or discriminatory
behavior seriously.**

### Misuse of Course Resources {#Misuse_Of_Resources}

If individuals are disrespectful to students, course staff, or others
via course resources, they will lose access to course resources. E.g.,
if someone is unkind in the course forum, their account will be removed
from the course forum.

## Logistics {#Logistics}

### The Classroom {#The_Classroom}

Our time in the classroom will be a mix of traditional lecture and
discussion-based activities. Please come to class ready to engage with
the material and ask questions about things you don't understand. The
pre-class drills (discussed below) should help you with this!

Slides won\'t be posted, because we\'ll mostly be doing live coding and
whiteboard stuff, so we highly recommend taking your own notes!
Otherwise your best resources for reviewing the material will be going
back through the lectures themselves. We\'ll have some short written
materials, but these are usually either activity sheets or written aids
for re-implementing the class compiler, after you\'ve already come to
class and completed the in-class activities! The class compiler update
guides are not designed to subsitute for class sessions. Importantly,
they do not cover all content required for the exams or for implementing
HWs.

### Absences {#Absences}

Because class sessions are interactive, it seems to help to attend live.
However! We know many folks have to be absent once or twice. If you miss
a class session, we recommend catching up by watching the course capture
video and doing the activites along with the class. Where relevant, we
post activity sheets to make this a bit easier.

We aren\'t taking attendance---and we trust you to come to class
sessions whenever you can make it and to keep up with course content on
your own whenever you can\'t---so no need to get in touch with us if you
have to be away. But definitely feel free to swing by office hours if
you want to chat about ways to keep up in the event of an absence.

### Time Expectations {#Time_Expectations}

In addition to 3 hours a week in lecture and 1 hour a week in section,
students will be expected to spend 6--8 hours a week outside of class on
homework and drills, plus an average of 2 hours per week studying for
the midterm and the final exam.

### Required Materials {#Required_Materials}

There is no textbook for the course; all readings will be provided
digitally.

You will need access to a computer in order to complete the assignments.
If you do not have access to a computer, please contact [Berkeley
Student Technology
Services](https://studenttech.berkeley.edu/devicelending) about
acquiring a loaner laptop. Also consider contacting the [Berkeley
Student Technology Fund](https://techfund.berkeley.edu/).

## Assignments, Exams, and Grading {#Assignments_Exams_Grading}

All assignments will be posted and handed in online. Grading weights for
each type of assignment are listed below.

Homeworks will be due on Thursdays at 9pm. Homeworks will be due either
a week or two weeks after they are released, and there will never be
more than one homework out at a time. Online drills will be due every
Thursday at 9pm (*even on weeks when there\'s no HW!*). We chose this
time based on feedback from students that having just one deadline per
week worked better for folks. However! If you don\'t like having it due
at the same time as HW, please feel free to set your own private
deadline for an earlier time! The drills are structured so that you can
already respond days before the official deadline.

### Drills (10%) {#Drills}

Drills are short online quizzes that will be due every Thursday. These
should take around 30 minutes to complete, and they are designed to help
us---and you!---understand which topics you've already understood vs.
which topics we might need to cover more deeply in class.

Drills will be graded for completion; you will get credit as long as you
appear to be taking them seriously. You can miss one drill and still get
full credit for this part of the class.

Extensions are not available for drills. We made this choice for a
couple reasons. First, if it\'s at all possible, we really want you to
keep up with lectures---even if you\'re falling behind on other work!
We've noticed that getting behind on lectures seems to cause bigger
issues than missing one HW, for example. Also, since we try to change
class session content and section content in response to the confusions
we see in drills, drill responses become much less useful for shaping
the direction of the course if they come in late. So we don\'t do
extensions for drills. But we totally understand that things come up! So
we have the one-drill-gets-dropped rule (see above) to handle exactly
that situation.

We definitely recommend setting up a calendar reminder for drills, since
they come around at the same time every week! And they\'re graded for
completion, so they\'re basically free points. :)

### Homework Assignments (60%) {#HWs}

Homeworks, due every week or two, are programming projects designed to
help you learn the material by putting it into practice. Programming
assignments will be graded for correctness and test quality.
Occasionally, some of your homeworks will include short, written
reflections related to the course material. These will be graded
lightly---we're asking you to think seriously and carefully, but not to
write formal papers. Homework assignments should be completed and handed
in individually. (But see the collaboration policy below---you are free
to discuss the homeworks with your classmates!) We will use the terms
"homework," "assignment," and "project" interchangeably. Two-week
homeworks are worth twice as much as one-week homeworks in your grade.
All assignments will be clearly marked with whether they are one-week or
two-week homeworks.

### Exams (30%) {#Exams}

There will be two exams: a midterm and a final. There will not be
alternative dates or times for the midterm or final. The midterm will
take place during a class session, so if you have time conflicts with
our class time, make sure you can be present on the day of the midterm.
Likewise, make sure you can be present on the day of the final.

The midterm will count for 12% of the grade, and the final will count
for 18% of the grade. We have a "clobber" policy, so if you get a higher
grade on the final than on the midterm, the final score will be used for
both your midterm and your final. (Note that it doesn't go the other
way. Exam scores from earlier in the semester never replace exam scores
from later in the semester.)

### Late Assignments {#Late_Assignments}

Each student has **ten** late days **total**. Each late day allows the
student to hand in a homework one day (24 hours) late. **No more than
three can be used on an individual assignment.** If you want to use late
days, you have until 3 days (72 hours) after the original deadline to
submit the HW. You do not need to email, fill in a form, or otherwise
let us know if you want to take late days. Taking late days does not
reduce the HW grade. Importantly, **all homeworks must be turned in before
Monday of finals week, regardless of available late days.**

If your assignment is handed in more than 72 hours after the original
deadline and you have not been granted an extension (see below), your
assignment will not be graded.

Despite having late days available for every assignment, we highly
encourage everyone to meet the deadline rather than using late days,
except when strictly necessary. Course content will advance with the
assumption that students have already completed the HW by the deadline,
and help for past HWs will be deprioritized relative to help for current
HWs (including on the course forum). Also remember from the Ed
Discussion section that course staff are unavailable after 9pm and on
Saturdays and Sundays.

**Late days cannot be used for drills or exams.**

### What if I\'m late because Gradescope isn\'t working? {#Gradescope_Issues}

If Gradescope isn\'t working for you, and you still have time before the
submission deadline, reach out to the GSIs on Ed Discussion. We\'ll work
to get it resolved before the submission deadline.

If your Gradescope issue is *not* resolved before the deadline, you
still have to submit before the deadline! We\'ve provided an emergency
backup approach for submitting in the event that Gradescope isn\'t
working for you. Please submit a zip file of your finished solution via
the [Emergency Submission Form](#). To
submit via the Emergency Submission Form, you will need to be signed
into Google using your Berkeley email, and the form will record your
Berkeley email so that we know who submitted it. Since you\'re reading
the syllabus for the first drill, please go ahead and make sure you can
see the form right now! :)

Note that even if you\'ve gotten in touch with the GSIs to resolve the
Gradescope issue *you always need to submit via the emergency form if
you haven\'t submitted via Gradescope.* We can\'t upload your submission
to gradescope retroactively if we don\'t receive the submission before
the deadline (or the deadline plus late days, or the deadline plus your
extension, whichever deadline is relevant for you). If an emergency
prevents you from submitting via either Gradescope or the emergency
form, see [Extensions](#Extensions) for the process to get an extensions
based on emergencies.

### Extensions {#Extensions}

If you need an extension of more than three days, use 
[the extensions form]({{ site.links.extension }}) to request extensions. 
Some 
[psych research](https://journals.sagepub.com/doi/abs/10.1111/1467-9280.00441)
suggests that
students perform better when they adhere to instructor deadlines than
when they set their own. So I strongly suggest trying to adhere to the
original deadlines if you can wrangle it. However! Stuff comes up! If
you feel you need an extension, we encourage you to submit the form,
even if you\'re worried it won\'t be granted. Can\'t hurt to ask.

**There are no extensions for exams or drills. Extensions are only for
HWs.**

<!-- ### Non-Anonymous Grading {#Anonymous_Grading} -->

<!-- All homeworks will be graded anonymously. Please do not include -->
<!-- identifying information with your homework submission. -->

### Regrade Requests {#Regrade_Requests}

You are encouraged to look over your assignments after they have been
graded. If you find a possible error or believe that you lost too many
points, please submit a regrade request through the course hand-in
software. You must initiate such inquiries within one week of receiving
your grade. The grading will be freshest in your GSIs' minds during this
time, and this prevents a backlog of requests from arising towards the
end of the semester.

### Grade Bins {#Grade_Bins}

This course is not graded on a curve. The starting point for mapping
between percentage grades and final grades is the standard set of grade
bins (below). We may adjust thresholds in ways that make grades higher,
but we will never adjust them in ways that make grades lower.

| max cutoff | grade |
|------------|-------|
| 97         | A+    |
| 93         | A     |
| 90         | A−    |
| 87         | B+    |
| 83         | B     |
| 80         | B−    |
| 77         | C+    |
| 73         | C     |
| 70         | C−    |
| 67         | D+    |
| 63         | D     |
| 60         | D−    |
| 0          | F     |

## Accommodations {#Accommodations}

We honor and respect the different learning needs of our students, and
are committed to ensuring you have the resources you need to succeed in
our class. If you need religious or disability-related accommodations,
if you have emergency medical information you wish to share with us, or
if you need special arrangements in case the building must be evacuated,
please share this information with us as soon as possible at
[eecs-course-management@eecs.berkeley.edu](mailto://eecs-course-management@eecs.berkeley.edu).

### DSP {#DSP}

If you have physical, psychological, or learning disabilities that could
affect your performance in the course, we urge you to contact
<http://dsp.berkeley.edu>). See more information under the "DSP" section
of "Resources" farther down this page.

### Religious Observance {#Religious_Observance}

If you require accommodation for religious observance, please contact
[eecs-course-management@eecs.berkeley.edu](mailto://eecs-course-management@eecs.berkeley.edu)
at least a week before the deadline in question to make arrangements.

### Personal Emergency {#Personal_Emergency}

In the event of a medical or family emergency, contact
[eecs-course-management@eecs.berkeley.edu](mailto://eecs-course-management@eecs.berkeley.edu)
to work out accommodations.

### Incompletes {#Incompletes}

Incompletes are possible in this course, but only if the situation meets
both of the following conditions:

-   The student has completed at least 85% of the work for the course
    before requesting the incomplete. Percentages are based on grade
    weights. (Example: Suppose two-week HWs are each worth 9.2% of the
    total grade. A student who has completed everything except a single
    two-week HW can request an incomplete. A student who has completed
    everything except TWO two-week HWs cannot.)
-   The grade for the work completed so far is high enough that a 100%
    on all remaining work can bring the total grade above 60%.

If you want to request an incomplete, remember that you must include a
schedule of due dates for all remaining assignments, and both the
student and instructor must agree on that schedule, in writing. Once
we\'ve agreed on a schedule, those dates are final. (We cannot sign
extension forms.)

## Getting Help {#Getting_Help}

Our goal, as a course staff, is for every student to do well in the
class. As such, we encourage you to ask questions about anything you
don't understand. Whether you are confused by something from lecture or
are having trouble with an assignment, please reach out to us!

### Ed Discussion {#Ed_Discussion}

Our course uses Ed Discussion for
online discussions. You can use it to ask questions about course
concepts, assignments, and logistics. Posts can be either public or
private; public posts are visible to everyone, while private posts are
visible only to course staff. Almost all posts should be public. Any
questions having to do with your particular solution to an assignment
should be private. All other posts should be public. (If you have a
question about something, it's very likely that other students do, too!)
The course staff may make your private posts public if the answer is of
general interest.

Ed Discussion is a discussion forum, so please feel free to respond to
each others' questions and comments! It's great when students can learn
from each other! When doing so, keep in mind the Course culture
guidelines.

Posts made on Ed Discussion after 9pm will not get a course staff
response until the next day. Course staff will not be available
Saturdays or Sundays.

### Office Hours {#Office_Hours}

GSIs will offer office hours each week. The instructor will also have open office
hours. Each week's schedule is available [here](./schedule.html). We may
adjust the office hour schedule throughout the semester as we do
mid-semester surveys to understand student needs and preferences!

Please come to office hours! Coming to office hours does not send a
signal that you are behind or need "extra help." On the contrary, coming
to office hours early and often tends to co-occur with success in the
course!

Feel free to come to office hours even if you don't have a
specific question about an assignment. We are happy to chat about the
course material, computer science in general, careers in computer
science, or whatever other computer-y topics are on your mind.

### Contacting Us {#Contacting_Us}

At this point you\'ve probably noticed there aren\'t any email addresses
for the course! We\'ve found that if we have more than one communication
platform, we have a hard time (1) getting folks in touch with the right
person to handle each request type, (2) getting everyone prompt
responses, and (3) also keeping track of common questions. All of these
are super important to us for making the class experience good for you,
so we\'re running all electronic course communication *only via Ed Discussion*. 
See the section above this for our guidelines on how to use
Ed Discussion! We will not be responding to course-related messages via
email.

The other great (and non-electronic!) way to get in touch is to come to
Office Hours! We highly recommend this. :)

The only exceptions to the all-Ed-all-the-time rule are the categories
below:

Extensions should be requested via the extensions form. See more detail
in [Extensions](#Extensions).

Communication related to accommodations should go to course management.
Please see [Accommodations](#Accommodations).

If you have concerns such as a problem with another student or other
issues related to the topics of the Course Culture section of this
syllabus, please feel free to reach out to whichever member or members
of the course staff you are comfortable contacting, in whatever way
you\'re comfortable contacting them.

If you haven\'t managed to get access to Ed Discussions, please reach
out to the head GSI on bCourses to get this resolved.

## Collaboration Policy {#Collaboration_Policy}

Drills should be done alone and without collaboration, since they are
designed to help us shape the course by understanding whether you've
internalized the concepts you'll need for the next lectures. And
remember that they're graded for completion!

Homeworks are completed individually. We encourage students to talk
about the assignments at a high level and to assist each other with
debugging---for instance, talking about why code doesn't compile or why
a test is failing. Students should not, however, share code or try to
find solutions on the Internet.

The following examples of collaboration *are* allowed:

-   Discussing how to solve a problem with a classmate without writing
    any code
-   Showing an error message or confusing output without showing your
    code
-   Googling the text of an error message
-   Copying **small** snippets of code from answers on Stack Overflow

The following examples are *not* allowed:

-   Leaving a representation of your code (the text, a screenshot) in a
    classmate's possession; if you want to talk through an error
    message, please do it live in-person or via Zoom, etc.
-   Copying a chunk of code from a classmate's solution into yours
-   Retyping a chunk of code from a classmate's solution into yours; if
    you're worried that it will be hard to avoid this after seeing a
    classmate's code, please avoid looking at your classmates' code
-   Copying, retyping, or adapting a chunk of code from an AI tool or
    other programming aide
-   Seeing a suggested code completion in your editor (remember to turn
    off your programming aides!)
-   Talking another student through a solution as they type code
-   Googling for complete problem solutions
-   Feeding either starter code or your solution into an AI tool or
    other programming aide
-   Posting your solution in a publicly-accessible location

The underlying goal of the HW collaboration policy is all about what
we\'re trying to do with HWs. We hope HWs aren\'t just about whether you
can get to a functional compiler. If it was just about that, you could
grab an existing compiler and call it a day. :) We\'ve designed HWs to
help you develop a deep understanding of language design and
implementation concepts, and to give you practice doing creative problem
solving in this space. This is also what we\'re grading for---evidence
that you\'ve deeply understood the core compiler or language concept,
and evidence that you\'ve solved problems with your own creativity. So
avoid things that don\'t demonstrate your understanding or your
creativity. Except for small snippets copied from Stack Overflow, all
ideas represented in your submitted code should be your own!

Exams are completed individually.

If you have questions about the boundaries of the policy, please ask.
There is never a penalty for asking! We're always happy to clarify.

### Autograder + Solution Similarity Checker {#Autograder}

As discussed in the Collaboration Policy section above, we\'re grading
your HWs based not just on whether you have a functional compiler and
interpreter but on: (i) whether they demonstrate your deep understanding
of language design and implementation concepts and (ii) whether they
demonstrate your creativity in this domain. The autograder has a
built-in checker that assesses the similarity of your solutions to
solutions by other students in the course (and a variety of other
resources including Internet resources and prior students' solutions).
If the autograder finds a high similarity with another solution, past a
particular threshold, that similar submission doesn\'t offer evidence of
creativity in solving language design and implementation problems. In
these cases, the autograder will assign a low or zero grade. If this
happens and you feel the work does in fact offer evidence of your deep
understanding of the core language concept we\'re assessing and does
offer evidence that you solved all components of the HW creatively, you
can go through the [CSC
process](https://live-wp-sa-conduct-1.pantheon.berkeley.edu/).

Based on prior years, if you write your own code and don\'t copy or
autogenerate code, the similarity checker will be happy with your
submission!

### Withdrawing a Submission {#Withdrawing_Submission}

Sometimes in the midst of stressful circumstances, we may make a
mistake. You can withdraw a homework submission **before the autograder
runs** by overwriting your submission on
Gradescope with the
assignment\'s starter code. You do not need to provide an explanation.
If you withdraw a submission, the submission will automatically receive
a 0, and **the autograder will not run on your overwritten submission**.

<!-- You can fill out [this form](#) if you
would like to withdraw an exam from grading. In the case of an exam, you
must fill out the form within 48 hours of when you completed the exam. -->

### What Happens in the CSC Process? {#CSC}

This varies from case to case. See [this
page](https://live-wp-sa-conduct-1.pantheon.berkeley.edu/) for details.
A starting point for sanctioning for undergraduate students is: (i)
First violation: Non-Reportable Warning and educational intervention,
(ii) Second violation: Suspension/Disciplinary Probation and educational
interventions, (iii) Third violation: Dismissal. But again, this varies
from case to case.

### Summary {#Autograder_Summary}

If you don't want your submission to be autograded or checked for
similarity, do not submit it. If you don't want it to be autograded or
checked, and you've already submitted it, withdraw it by overriding your
submission on Gradescope
with the assignment\'s starter code before the autograder runs.

### Please Don't Cheat {#Dont_Cheat}

We're sorry this section of the syllabus is so sad. We don't like it
either. But it's upsetting to students if other students are cheating,
so we've built the similarity checker into the autograder. Please don't
cheat, and then none of us will have to deal with all this.

And again, if you have questions about the boundaries of the
collaboration policy, please ask! There is never a penalty for asking!

## Course Announcements {#Course_Announcements}

Course announcements will be made via Ed Discussion. Time-sensitive
announcements will also go out via email.

The course staff may issue clarifications to assignments up to 48 hours
before the due date.

## Resources {#Resources}

*Important Note:* We are committed to being a resource to you, but it is
important to note that all members of the teaching staff for this course
are [responsible
employees](https://svsh.berkeley.edu/responsible-employee) , meaning
that **we must disclose any incidents of sexual harassment or violence
to campus authorities**. If you would like to speak to a confidential
advocate, please consider reaching out to the [Berkeley PATH to Care
Center](https://care.berkeley.edu/) .

### Basic Needs Center {#Basic_Needs}

The [Basic Needs Center](https://basicneeds.berkeley.edu/home) (lower
level of MLK Student Union, Suite 72) provides support with all the
essential resources needed to not only survive, but thrive here at UC
Berkeley. Their mission is to support you and work together towards
justice and belonging for all. They define Basic Needs as the essential
resources that impact your health, belonging, persistence, and overall
well being. It is an ecosystem that includes: nutritious food, stable
housing, hygiene, transportation, healthcare, mental wellness, financial
sustainability, sleep, and emergency dependent services. They refuse to
accept hunger, homelessness, and all other basic needs injustices as
part of our university.

### Berkeley International Office (BIO) {#BIO}

The mission of the [Berkeley International
Office](http://internationaloffice.berkeley.edu/) (2299 Piedmont Avenue,
510-642-2818) is to provide support with all the essential resources
needed to not only survive, but thrive here at UC Berkeley. Their
mission is to support you and work together towards justice and
belonging for all. They define Basic Needs as the essential resources
that impact your health, belonging, persistence, and overall well being.
It is an ecosystem that includes: nutritious food, stable housing,
hygiene, transportation, healthcare, mental wellness, financial
sustainability, sleep, and emergency dependent services. They refuse to
accept hunger, homelessness, and all other basic needs injustices as
part of our university.

### Center for Access to Engineering Excellence (CAEE) {#CAEE}

The [Center for Access to Engineering
Excellence](https://engineering.berkeley.edu/student-services/academic-support)
(Bechtel Engineering Center 227) is an inclusive center that offers
study spaces, nutritious snacks, and tutoring in \>50 courses for
Berkeley engineers and other majors across campus. The Center also
offers a wide range of professional development, leadership, and
wellness programs, and loans iclickers, laptops, and professional attire
for interviews.

### Counseling and Psychological Services (CAPS) {#Counseling_and_Psychological_Services}

The staff of the [UHS Counseling and Psychological
Services](https://uhs.berkeley.edu/caps) (Tang Center, 2222 Bancroft
Way; 510-642-9494; for after-hours support, please call the 24/7 line at
855-817-5667) provides confidential, brief counseling and crisis
intervention to students with personal, academic and career stress.
Services are provided by a multicultural group of professional
counselors including psychologists, social workers, and advanced level
trainees. All undergraduate and graduate students are eligible for CAPS
services, regardless of insurance coverage.

To improve access for engineering students, a licensed psychologist from
the Tang Center also holds walk-in appointments for confidential
counseling in Bechtel Engineering Center 241 (check
[here](https://engineering.berkeley.edu/student-services/advising-counseling)
for schedule).

### COVID-19 Resources and Support {#COVID-19_Resources_and_Support}

You can find UC Berkeley' COVID-19 resources and support
[here](https://coronavirus.berkeley.edu/).

### Disabled Students' Program (DSP) {#Disabled_Students_Program}

The [Disabled Students' Program](https://dsp.berkeley.edu/) (260 César
Chávez Student Center #4250; 510-642-0518) serves students with
disabilities of all kinds, including mobility impairments, blind or low
vision, deaf or hard of hearing; chronic illnesses (chronic pain,
repetitive strain injuries, brain injuries, AIDS/HIV, cancer, etc.)
psychological disabilities (bipolar disorder, severe anxiety or
depression, etc.), Attention Deficit Disorder/Attention Deficit
Hyperactivity Disorder, and Learning Disabilities. Services are
individually designed and based on the specific needs of each student as
identified by DSP's Specialists. The Program's official website includes
information on DSP staff, UCB's disabilities policy, application
procedures, campus access guides for most university buildings, and
portals for students and faculty.

### Educational Opportunity Program (EOP) {#EOP}

The [Educational Opportunity Program](http://eop.berkeley.edu) (Cesar
Chavez Student Center 119; 510-642-7224) at Cal has provided first
generation and low income college students with the guidance and
resources necessary to succeed at the best public university in the
world. EOP's individualized academic counseling, support services, and
extensive campus referral network help students develop the unique gifts
and talents they each bring to the university while empowering them to
achieve.

### Gender Equity Resource Center (GenEq) {#GenEq}

The [Gender Equity Resource Center](https://cejce.berkeley.edu/geneq),
fondly referred to as GenEq, is a UC Berkeley campus community center
committed to fostering an inclusive Cal experience for all. GenEq is the
campus location where students, faculty, staff and Alumni connect for
resources, services, education and leadership programs related to gender
and sexuality. The programs and services of the Gender Equity Resource
Center are focused into four key areas: women; lesbian, gay, bisexual,
and transgender (LGBT); sexual and dating violence; and hate crimes and
bias driven incidents. GenEq strives to provide a space for respectful
dialogue about sexuality and gender; illuminate the interrelationship of
sexism, homophobia and gender bias and violence; create a campus free of
violence and hate; provide leadership opportunities; advocate on behalf
of survivors of sexual, hate, dating and gender violence; foster a
community of women and LGBT leaders; and be a portal to campus and
community resources on LGBT, Women, and the many intersections of
identity (e.g., race, class, ability, etc.).

### Multicultural Education Program {#MEP}

The [Multicultural Education Program](http://mep.berkeley.edu) (MEP) is
one of six initiatives funded by the Evelyn and Walter Haas, Jr. Fund to
work towards institutional change and to create a positive campus
climate for diversity. The MEP is a five-year initiative to establish a
sustainable infrastructure for activities like educational consultation
and diversity workshops for the campus that address both specific
topics, and to cater to group needs across the campus.

### Ombudsperson for Students {#Ombudsperson}

The [Ombudsperson for Students](https://sa.berkeley.edu/Ombuds) (Sproul
Hall 102; 510-642-5754) provides a confidential service for students
involved in a University-related problem (academic or administrative),
acting as a neutral complaint resolver and not as an advocate for any of
the parties involved in a dispute. The Ombudsperson can provide
information on policies and procedures affecting students, facilitate
students' contact with services able to assist in resolving the problem,
and assist students in complaints concerning improper application of
University policies or procedures. All matters referred to this office
are held in strict confidence. The only exceptions, at the sole
discretion of the Ombudsperson, are cases where there appears to be
imminent threat of serious harm.

### PATH to Care Center {#PATH_to_Care_Center}

The [PATH to Care Center](https://care.berkeley.edu) (510-642-1998)
offers Confidential Care Advocates providing affirming, empowering, and
confidential support for survivors and those who have experienced
gendered violence, including sexual harassment, dating and intimate
partner violence, sexual assault, stalking, and sexual exploitation.
Advocates bring a non-judgmental, caring approach to exploring all
options, rights, and resources.

#### Care Line (PATH to Care Center) {#Care_Line}

The [Care Line](https://care.berkeley.edu/care-line/) (510-643-2005) is
a 24/7, confidential, free, campus-based resource for urgent support
around sexual assault, sexual harassment, interpersonal violence,
stalking, and invasion of sexual privacy. The Care Line will connect you
with a confidential advocate for trauma-informed crisis support
including time-sensitive information, securing urgent safety resources,
and accompaniment to medical care or reporting.

### Social Services {#Social_Services}

[Social
Services](http://uhs.berkeley.edu/students/counseling/socialservices.shtml)
provides confidential services and counseling to help students with
managing problems that can emerge from illness such as financial,
academic, legal, family concerns, and more. They specialize in helping
students with pregnancy resources and referrals; alcohol/drug problems
related to one's own or a family member's use; sexual assault/rape;
relationship or other violence; and support for health concerns-new
diagnoses or ongoing conditions. Social Services staff will assess a
student's immediate needs, work with the student to develop a plan to
meet those needs, and facilitate arrangements with academic departments
and advocate for the student with other campus offices and community
agencies, as well as coordinate services within UHS.

### Student Learning Center (SLC) {#SLC}

As the primary academic support service for undergraduates at UC
Berkeley, the [Student Learning Center](http://slc.berkeley.edu)
(510-642-7332) assists students in transitioning to Cal, navigating the
academic terrain, creating networks of resources, and achieving
academic, personal, and professional goals. Through various services
including tutoring, study groups, workshops, and courses, SLC supports
undergraduate students in Biological and Physical Sciences, Business
Administration, Computer Science, Economics, Mathematics, Social
Sciences, Statistics, Study Strategies, and Writing.

### Student Technology Equity Program (STEP) {#STEP}

The [Student Technology Equity
Program](https://technology.berkeley.edu/STEP) connects laptops, Wi-Fi
hotspots, and other required technology to students in need.

### UC Berkeley Food Pantry {#Food_Pantry}

The [UC Berkeley Food Pantry](https://pantry.berkeley.edu) (#68 Martin
Luther King Student Union) aims to reduce food insecurity among students
and staff at UC Berkeley, especially the lack of nutritious food.
Students and staff can visit the pantry as many times as they need and
take as much as they need while being mindful that it is a shared
resource. The pantry operates on a self-assessed need basis; there are
no eligibility requirements. The pantry is not for students and staff
who need supplemental snacking food, but rather, core food support.

### Undocumented Students Program (USP) {#USP}

The [Undocumented Students Program](https://undocu.berkeley.edu/%20)
(119 Cesar Chavez Center; 642-7224) practices a holistic, multicultural
and solution-focused approach that delivers individualized service for
each student. The academic counseling, legal support, financial aid
resources and extensive campus referral network provided by USP helps
students develop the unique gifts and talents they each bring to the
university, while empowering a sense of belonging. The program's mission
is to support the advancement of undocumented students within higher
education and promote pathways for engaged scholarship.

## Acknowledgments! {#Acknowledgments}

Much of the design and content of this course is adapted with permission
from materials developed by Doug Woos.

Much of the infrastructure for this course is adapted with permission
from materials developed by
<http://cs.brown.edu/courses/csci1260/spring-2021/staff.html> .

Much of the content in this document is adapted with permission from
materials developed by Doug Woos, Kathi Fisler, and Shriram
Krishnamurthi.
:::

