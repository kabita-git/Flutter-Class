import 'package:kusoed_demo_app/features/courses/models/courses.dart';

const List<Course> courses = [
  Course(
    code: 'EDU 501',
    title: 'Foundations of Education',
    instructor: 'Dr. Shrestha',
    schedule: 'Sun & Tue · 9:00 AM – 10:30 AM',
    location: 'SOED Block A, Room 204',
    creditHours: 3,
    description:
        'An introduction to the philosophical, historical, and sociological '
        'foundations of education, with emphasis on the Nepali context.',
    objectives: [
      'Explain key educational philosophies and their classroom implications.',
      'Analyze major milestones in Nepal’s education history.',
      'Connect sociological theory to school and community practice.',
    ],
    prerequisites: ['None'],
    resources: [
      'Education in Nepal: A Historical Overview (Reader)',
      'Dewey, J. (1938). Experience and Education.',
      'Weekly reflection prompts on Moodle.',
    ],
  ),
  Course(
    code: 'EDU 523',
    title: 'Curriculum Design',
    instructor: 'Prof. Gurung',
    schedule: 'Mon & Wed · 11:00 AM – 12:30 PM',
    location: 'SOED Block B, Room 110',
    creditHours: 3,
    description:
        'A practical study of curriculum theory, planning, and evaluation with '
        'a focus on outcomes-based education.',
    objectives: [
      'Design unit plans aligned to learning outcomes.',
      'Develop assessment strategies for diverse learners.',
      'Evaluate curriculum models for context fit.',
    ],
    prerequisites: ['EDU 501 or equivalent'],
    resources: [
      'Tyler, R. (1949). Basic Principles of Curriculum and Instruction.',
      'Sample unit plan templates and rubrics.',
    ],
  ),
  Course(
    code: 'EDU 540',
    title: 'Educational Research Methods',
    instructor: 'Dr. Thapa',
    schedule: 'Tue & Thu · 2:00 PM – 3:30 PM',
    location: 'SOED Block A, Room 305',
    creditHours: 3,
    description:
        'Quantitative and qualitative research designs, ethics, data collection, '
        'and basic analysis for education studies.',
    objectives: [
      'Formulate researchable questions.',
      'Select appropriate research designs and methods.',
      'Apply ethical principles in education research.',
    ],
    prerequisites: ['EDU 501 or instructor approval'],
    resources: [
      'Creswell, J. (2018). Research Design.',
      'Institutional ethics guidelines.',
    ],
  ),
  Course(
    code: 'EDU 565',
    title: 'Inclusive Education',
    instructor: 'Ms. Karki',
    schedule: 'Fri · 10:00 AM – 1:00 PM',
    location: 'SOED Block C, Room 208',
    creditHours: 3,
    description:
        'Explores inclusive pedagogy, disability studies, and strategies for '
        'supporting diverse learners in Nepali classrooms.',
    objectives: [
      'Identify barriers to participation for diverse learners.',
      'Design inclusive lesson plans and classroom routines.',
      'Partner with families and communities for support.',
    ],
    prerequisites: ['EDU 523 or equivalent'],
    resources: [
      'UNESCO Inclusive Education toolkit (excerpts).',
      'Case studies from local schools.',
    ],
  ),
  Course(
    code: 'EDU 580',
    title: 'Educational Leadership',
    instructor: 'Dr. Adhikari',
    schedule: 'Sat · 9:00 AM – 12:00 PM',
    location: 'SOED Block B, Room 215',
    creditHours: 3,
    description:
        'Focuses on leadership theory, school improvement, and organizational '
        'culture for educational settings.',
    objectives: [
      'Compare leadership styles in school contexts.',
      'Develop a school improvement action plan.',
      'Use data to inform leadership decisions.',
    ],
    prerequisites: ['EDU 540 or instructor approval'],
    resources: [
      'Fullan, M. (2014). The Principal.',
      'Sample school improvement plans.',
    ],
  ),
];